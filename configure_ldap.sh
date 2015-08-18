#!/bin/bash

apt-get update
apt-get -y install ldap-auth-client nscd
auth-client-config -t nss -p lac_ldap

cat > /usr/share/pam-configs/my_mkhomedir << END
Name: activate mkhomedir
Default: yes
Priority: 900
Session-Type: Additional
Session:
        required                        pam_mkhomedir.so umask=0022 skel=/etc/skel
END

pam-auth-update
