#!/bin/sh

cd $GRAFANA_DIR && make devenv sources=prometheus
cd $GRAFANA_DIR/devenv

i=1
while [ $i -ne 150 ]
do
        i=$(($i+1))
	docker-compose up --scale alertmanager=$i -d
	sleep 30
done