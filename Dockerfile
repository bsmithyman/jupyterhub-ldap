
FROM jupyter/jupyterhub:latest
MAINTAINER Brendan Smithyman <brendan@bitsmithy.net>

ADD configure_ldap.sh /srv/jupyterhub/configure_ldap.sh
RUN /srv/jupyterhub/configure_ldap.sh

RUN chmod 777 /home
VOLUME /home

ADD startup.sh /srv/jupyterhub/startup.sh

CMD ["/srv/jupyterhub/startup.sh"]
