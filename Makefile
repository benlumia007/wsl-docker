.PHONY: create-network initial-setup

create-network:
	docker network create --driver=bridge --subnet=172.141.0.0/16 --ip-range=172.141.145.0/24 frontend

initial-setup: provision/initial-setup.sh
	/bin/bash provision/initial-setup.sh