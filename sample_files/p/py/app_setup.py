import os
import platform
from ruamel.yaml import YAML
import subprocess


class Configurator:
    def __int__(self):
        self.tomes_home = None

    def questions(self):
        print("Welcome to TOMES.  To function correctly TOMES requires a fixed path on your filesystems.\n"
              "The location you choose should be able to handle large amounts of data. TOMES does not care if this\n"
              "is a network share or on your local computer, but it needs a full path. (i.e. F:\\Files\\My_Files\\Email \n"
              "Processing. This path cannot be changed without rerunning setup.")
        temp = input("What is the path to your TOMES Home? ")
        self.tomes_home = temp

    def load_docker_compose(self, location):
        yaml = YAML()
        f = open("../app_devel_build/dc_template.yml", 'r', encoding="utf-8")
        ya = yaml.load(f)
        newd = {}
        services = ya['services']
        for s, v in services.items():
            if s == "main-client" or s == "pst-server":
                v["volumes"] = self._get_control_vols()
                continue
            v["volumes"] = self._get_simple_vols()

        # Wrtie out to new file
        f.close()
        fout = open("../app_devel_build/docker-compose.yml", "w", encoding="utf-8")
        yaml.dump(ya, fout)
        fout.close()

    def _get_control_vols(self):
        control_vols = ["{}:/home/tomes/data".format(self.tomes_home),
                        "/var/run/docker.sock:/var/run/docker.sock",
                        "/usr/local/bin/docker:/usr/bin/docker"]
        return control_vols

    def _get_simple_vols(self):
        simp_vols = ["{}:/home/tomes/data".format(self.tomes_home)]
        return simp_vols

    def build_mono_container(self):
        os.chdir("../Servers/mono_image/")
        pf = platform.uname()
        if pf.release == '7':
            docker_env = {"DOCKER_TLS_VERIFY": "1",
                          "DOCKER_HOST": "tcp://192.168.99.100:2376",
                          "DOCKER_CERT_PATH": "E:\\bin\\machines\\default",
                          "COMPOSE_CONVERT_WINDOWS_PATHS": "true"}
            os.environ.update(docker_env)
        subprocess.call(['docker', 'build', '-t', 'tomes-pst-converter', '.'])
        print("Building Tomes Docker Application....")
        os.chdir("../../app_devel_build/")
        subprocess.call(['docker-compose', 'build'])


if __name__ == "__main__":
    cf = Configurator()
    cf.questions()
    cf.load_docker_compose(None)
    cf.build_mono_container()
    print()