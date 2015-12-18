c = get_config()

import os

keyfile = '/ssl/ssl.key'
certfile = '/ssl/ssl.crt'
if os.path.exists(keyfile) and os.path.exists(certfile):
    c.JupyterHub.ssl_key = keyfile
    c.JupyterHub.ssl_cert = certfile
    c.JupyterHub.port = 443

c.Spawner.env_keep += [name for name in os.environ.get('ENVPASSWHITELIST','').sp
lit(',')]

