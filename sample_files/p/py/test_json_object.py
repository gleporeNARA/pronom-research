import json
import python_jsonschema_objects as pjs
from string import Template


def render_json():
    acct = {}
    acct['gid'] = 'Test'
    acct['email'] = ''
    acct['ref_account'] = ''
    acct['folders'] = []
    return acct



if __name__ == "__main__":
    jsn = render_json()
    my_json = json.dumps(jsn)
    print()