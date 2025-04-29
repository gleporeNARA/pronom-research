from autobahn.twisted.websocket import WebSocketServerProtocol, WebSocketServerFactory, listenWS
import os
import json
import subprocess
import sys
from queue import Queue, Empty
from threading import Thread
from twisted.python import log
from twisted.internet import reactor


class PstConvert(WebSocketServerProtocol):
    WS_FOLDER_LIST = 1
    WS_SEND = 5
    WS_PROG_ON = 3
    WS_PROG_OFF = 4

    def __init__(self):
        super().__init__()
        self.production = True
        if self.production:
            self.pst_home = "/home/tomes/data/pst"
            self.mboxes_home = "/home/tomes/data/mboxes"
        else:
            self.pst_home = "E:\\RESOURCES\\TEST_RESOURCES\\tomes\\data\\pst"
            self.mboxes_home = "E:\\RESOURCES\\TEST_RESOURCES\\tomes\\data\\mboxes"
            self.readpst_home = "D:\\Development\\Python\\DockerComposeStruct\\devel\\tomes_docker_app" \
                                "\\Servers\\pst_server\\tomes_pst_extractor\\TomesPst2Mime.exe"
        self.pst_file = None
        self.size = None
        self.on_posix = 'posix' in sys.builtin_module_names
        self.file_tree = []

    def onConnect(self, request):
        print("In Connect")
        headers = {'Access-Control-Allow-Origin': '*'}
        return None, headers

    def onOpen(self):
        self.sendMessage(self.get_message_for_sending(PstConvert.WS_SEND, "Client Connected"))
        s = self._get_folder_tree()
        self.sendMessage(self.get_message_for_sending(PstConvert.WS_FOLDER_LIST, s))

    def _get_folder_tree(self):
        children = []
        for root, dirs, files in os.walk(self.pst_home):
            for f in files:
                children.append({'name': f})
        self.file_tree.append({'name': "PSTS", 'children': children})
        return json.dumps(self.file_tree)

    def onMessage(self, payload, isBinary):
        out = bytes.decode(payload, encoding='utf-8')
        payload = json.loads(bytes.decode(payload, encoding='utf-8'))
        if isBinary:
            pass
        else:
            if payload['o'] == 2:
                reactor.callInThread(self.convert, payload['data'])

    def onClose(self, wasClean, code, reason):
        print("WebSocket connection closed: {0}".format(reason))

    def enqueue_out(self, out, queue):
        for line in iter(out.readline, b''):
            queue.put(line)
        out.close()

    def get_message_for_sending(self, router, message):
        l = json.dumps({'router': router, 'data': message})
        return l.encode('utf-8')

    def convert(self, pst):
        pst_file = pst['file_name']
        pst_acc_name = pst['acc_name']
        p = subprocess.Popen(['docker', 'run',
                              '-v', '/mnt/data:/home/tomes/data',
                              '-t', 'govsanc/pst-extractor',
                              pst_file,
                              pst_acc_name],
                             stdout=subprocess.PIPE, bufsize=1, close_fds=self.on_posix)
        q = Queue()
        t = Thread(target=self.enqueue_out, args=(p.stdout, q))
        t.daemon = True
        self.sendMessage(self.get_message_for_sending(PstConvert.WS_SEND, "Processing: {}".format(os.path.join(self.pst_home, pst_acc_name))))
        t.start()
        line = None
        self.sendMessage(self.get_message_for_sending(PstConvert.WS_PROG_ON, ''))
        while t.is_alive():
            try:
                # Wait for a line to be generated.
                line = q.get_nowait()
            except Empty:
                # if the queue is empty but not complete continue
                line = None

            if line is not None:
                l = bytes.decode(line, encoding='utf-8')
                sender = json.dumps({'router': PstConvert.WS_SEND, 'data': l.strip()})
                self.sendMessage(sender.encode('utf-8'))
        self.sendMessage(self.get_message_for_sending(PstConvert.WS_SEND, "Complete"))
        self.sendMessage(self.get_message_for_sending(PstConvert.WS_PROG_OFF, ''))


if __name__ == "__main__":
    log.startLogging(sys.stdout)
    factory = WebSocketServerFactory()
    factory.protocol = PstConvert
    reactor.listenTCP(9000, factory)
    reactor.run()