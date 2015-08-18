# jupyterhub-ldap
LDAP-enabled fork of Docker container jupyter/jupyterhub

Set the following environment variables:

<dl>
  <dt>BASE</dt>
  <dd>the base path for the LDAP directory</dd>

  <dt>URI</dt>
  <dd>the location of the LDAP server</dd>
</dl>

You may wish to use persistent home directories by setting the volume at /home.

An example line to run with persistent storage and LDAP on the Docker host:

    sudo docker run -d --restart=always --name=jupyterhub -p 192.168.48.1:8000:8000 -v /virt/jupyterhub:/home -e BASE="dc=bitsmithy,dc=net" -e URI="ldap://192.168.48.1" bsmithyman/jupyterhub-ldap
