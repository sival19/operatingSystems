import json
import requests_unixsocket

sessions = requests_unixsocket.Session()

r = sessions.get('http+unix://%2Fvar%2Frun%2Fdocker.sock/containers/json')
registy_config = r.json()
print(registy_config)