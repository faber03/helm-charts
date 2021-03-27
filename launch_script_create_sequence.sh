#!/usr/bin/env bash

oc login -u adelucia -p fr57gyL master.unisannio.local:8443

oc project tesi-delucia

#KAFKA
#-----
(cd cp-kafka-helm-charts || exit;
helm install kafka .)

sleep 100

#NEO4j
#-----
(cd neo4j || exit;
helm install neo4j .)

sleep 60

#ARTEMIS
#-------
(cd activemq-artemis/activemq-artemis || exit;
helm install artemis .)

#sleep 90
sleep 60

#KAFKA-CONNECT ARTEMIS
#---------------------
(cd cp-kafka-helm-charts/charts/cp-kafka-connect-artemis || exit;
helm install kafka-connect-artemis .)

sleep 30

#KAFKA-CONNECT NEO4j
#-------------------
(cd cp-kafka-helm-charts/charts/cp-kafka-connect-neo4j/ || exit;
helm install kafka-connect-neo4j .)

sleep 90

###Create connectors instances
(cd config || exit;
curl -s -X POST -H 'Content-Type: application/json' --data @artemis-source.json  http://connect-artemis-tesi-delucia.router.default.svc.cluster.local/connectors)

sleep 45

(cd config || exit;
curl -s -X POST -H 'Content-Type: application/json' --data @neo4j-sink.json  http://connect-neo4j-tesi-delucia.router.default.svc.cluster.local/connectors)
