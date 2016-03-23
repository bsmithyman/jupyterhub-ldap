#!/bin/bash

export CONF=/etc/ldap.conf

if [ "$BASE" ]; then 
  sed -i "/^base.*$/d" $CONF
  echo "base $BASE" >> $CONF 
fi

if [ "$URI" ]; then
  sed -i "/^uri.*$/d" $CONF
  echo "uri $URI" >> $CONF
fi

if [ "$BINDDN" ]; then
  sed -i "/^binddn.*$/d" $CONF
  echo "binddn $BINDDN" >> $CONF
fi

if [ "$BINDPW" ]; then
  sed -i "/^bindpw.*$/d" $CONF
  echo "bindpw $BINDPW" >> $CONF
fi

cat >> $CONF << END
pam_password crypt
END

chmod 777 /home
jupyterhub -f /srv/jupyterhub/jupyterhub_config.py --no-ssl
