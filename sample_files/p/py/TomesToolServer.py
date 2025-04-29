from autobahn.twisted.websocket import WebSocketServerProtocol, WebSocketServerFactory, listenWS
import os
import json
import subprocess
import sys
from queue import Queue, Empty
from threading import Thread
from twisted.python import log
from twisted.internet import reactor
#TODO: Remove this from production
import platform


class TomesToolConvert(WebSocketServerProtocol):
    SEND_STD_OUT = 1
    SEND_PROG_ON = 2
    SEND_PROG_OFF = 3
    SEND_FOLDER_LIST = 5

    RECV_FILE_PACK = 4
    p = platform

    def __init__(self):
        super().__init__()
        self.on_posix = 'posix' in sys.builtin_module_names
        #TODO: Remove when we go into full production
        self.production = True
        self.opts = []
        self.eaxs_file_name = None
        self.eaxs_file = None
        self.output_file_name = None
        self.tagged_out = None
        self.server_name = "NER Server"
        self.file_tree = []
        self.presented_names = {}

        if self.production:
            self.eaxs_base = "/home/tomes/data/eaxs"
        else:
            self.eaxs_base = "E:\\RESOURCES\\TEST_RESOURCES\\tomes\\data\\eaxs"

    def onConnect(self, request):
        print("{}: Connected".format(self.server_name))
        headers = {'Access-Control-Allow-Origin': '*'}
        return None, headers

    def onOpen(self):
        self.sendMessage(self.get_message_for_sending(TomesToolConvert.SEND_STD_OUT, "Client Connected"))
        s = self._get_folder_tree()
        self.sendMessage(self.get_message_for_sending(TomesToolConvert.SEND_FOLDER_LIST, s))

    def _get_folder_tree(self):
        children = []
        for root, dirs, files in os.walk(self.eaxs_base):
            if os.path.basename(root) == "eaxs_xml":
                for f in files:
                    if f.endswith(".xml") and not str(f).__contains__("tagged"):
                        children.append({'name': f})
                        self.presented_names[f] = os.path.join(root, f)
        self.file_tree.append({'name': "EAXS", 'children': children})
        return json.dumps(self.file_tree)

    def enqueue_out(self, out, queue):
        for line in iter(out.readline, b''):
            queue.put(line)
        out.close()

    def get_message_for_sending(self, router, message):
        l = json.dumps({'router': router, 'data': message})
        return l.encode('utf-8')

    def onClose(self, wasClean, code, reason):
        print("WebSocket connection closed: {} : {} : {}".format(wasClean, code, reason))

    def onMessage(self, payload, isBinary):
        payload = json.loads(bytes.decode(payload, encoding='utf-8'))
        if isBinary:
            pass
        else:
            if payload['o'] == self.RECV_FILE_PACK:
                self.eaxs_file_name = payload['data']['eaxs_file']
                self.output_file_name = payload['data']['out_file']
                self.find_file_in_path()
                self.build_opts()
                reactor.callInThread(self.convert)

    def build_opts(self):
        self.opts.append('python')
        self.opts.append(os.path.join(os.getcwd(),
                                      os.path.join(os.path.sep.join(['tomes_tool', 'tomes_tool']), 'tagger.py')))
        self.opts.append(self.eaxs_file)
        self.opts.append(self.tagged_out)

    def find_file_in_path(self):
        self.sendMessage(self.get_message_for_sending(self.SEND_STD_OUT, "Locating files..."))
        for root, dirs, files in os.walk(self.eaxs_base):
            if self.eaxs_file_name in files:
                self.eaxs_file = os.path.join(root, self.eaxs_file_name)
                self.tagged_out = os.path.join(root, self.output_file_name)
                return

    def convert(self):
        p = subprocess.Popen(self.opts, stdout=subprocess.PIPE, bufsize=1, close_fds=self.on_posix)
        q = Queue()
        t = Thread(target=self.enqueue_out, args=(p.stdout, q))
        t.daemon = True
        self.sendMessage(self.get_message_for_sending(self.SEND_STD_OUT, "Processing: {}".format(self.eaxs_file)))
        t.start()
        line = None
        self.sendMessage(self.get_message_for_sending(self.SEND_PROG_ON, ''))
        while t.is_alive():
            try:
                # Wait for a line to be generated.
                line = q.get_nowait()
            except Empty:
                # if the queue is empty but not complete continue
                line = None

            if line is not None:
                l = bytes.decode(line, encoding='utf-8')
                sender = json.dumps({'router': self.SEND_STD_OUT, 'data': l.strip()})
                self.sendMessage(sender.encode('utf-8'))
        self.sendMessage(self.get_message_for_sending(self.SEND_STD_OUT, "Complete"))
        self.sendMessage(self.get_message_for_sending(self.SEND_PROG_OFF, ''))


if __name__ == "__main__":
    log.startLogging(sys.stdout)
    factory = WebSocketServerFactory()
    factory.protocol = TomesToolConvert
    reactor.listenTCP(9002, factory)
    reactor.run()