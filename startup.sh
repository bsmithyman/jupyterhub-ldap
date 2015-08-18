#!/bin/bash

sed -i "/^base.*$/d" /etc/ldap.conf
sed -i "/^uri.*$/d" /etc/ldap.conf

cat >> /etc/ldap.conf << END
base $BASE
uri $URI
END

chmod 777 /home
jupyterhub -f /srv/jupyterhub/jupyterhub_config.py
