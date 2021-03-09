#!/usr/bin/env bash

oc login -u adelucia -p fr57gyL master.unisannio.local:8443

oc project tesi-delucia

#NEO4j
#-----

#(cd neo4j || exit
#helm install neo4j .)

#ARTEMIS
#-------
(cd activemq-artemis/activemq-artemis || exit
helm install artemis .)

#KAFKA
#-----
(cd cp-kafka-helm-charts || exit;
./kafka_launch_script_create.sh
)

sleep 120

###Create connectors instances
(cd config || exit;
curl -s -X POST -H 'Content-Type: application/json' --data @artemis-source.json  http://connect-artemis-tesi-delucia.router.default.svc.cluster.local/connectors)

sleep 10

(cd config || exit;
curl -s -X POST -H 'Content-Type: application/json' --data @neo4j-sink.json  http://connect-neo4j-tesi-delucia.router.default.svc.cluster.local/connectors)
