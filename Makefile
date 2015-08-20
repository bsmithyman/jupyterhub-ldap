NAME = bsmithyman/jupyterhub-ldap

.PHONY: all build

all: build

build:
	docker build -t $(NAME) .
