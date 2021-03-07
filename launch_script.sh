#!/usr/bin/env bash

oc login -u adelucia -p fr57gyL master.unisannio.local:8443

oc project tesi-delucia

#NEO4j
#-----
#cd neo4j || exit
#helm delete neo4j
#helm install neo4j .

(cd neo4j || exit
#helm delete neo4j
#sleep 30
helm install neo4j .)

#ARTEMIS
#-------
#cd ..
#cd activemq-artemis/activemq-artemis || exit
#helm delete artemis
#oc delete pvc data-artemis-activemq-artemis-master-0
#oc delete pvc artemis-activemq-artemis
#helm install artemis .
#cd ../..
(cd activemq-artemis/activemq-artemis || exit
helm delete artemis
oc delete pvc data-artemis-activemq-artemis-master-0
oc delete pvc artemis-activemq-artemis
sleep 30
helm install artemis .)

#cd cp-kafka-helm-charts || exit
#./kafka_launch_script.sh
(cd cp-kafka-helm-charts || exit;
./kafka_launch_script.sh
)

sleep 90

###Create connectors instances
(cd config || exit;
curl -s -X POST -H 'Content-Type: application/json' --data @artemis-source.json  http://connect-artemis-tesi-delucia.router.default.svc.cluster.local/connectors)

sleep 45

(cd config || exit;
curl -s -X POST -H 'Content-Type: application/json' --data @neo4j-sink.json  http://connect-neo4j-tesi-delucia.router.default.svc.cluster.local/connectors)

#curl -s -X POST -H 'Content-Type: application/json' --data @mongodb-sink.json  http://connect-mongo-promenade.router.default.svc.cluster.local/connectors)
