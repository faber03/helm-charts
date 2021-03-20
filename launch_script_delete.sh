#!/usr/bin/env bash

oc login -u adelucia -p fr57gyL master.unisannio.local:8443

oc project tesi-delucia

#NEO4j
helm delete neo4j

#ARTEMIS
#-------
helm delete artemis
oc delete pvc data-artemis-activemq-artemis-master-0
oc delete pvc artemis-activemq-artemis

#KAFKA
#-----
(cd cp-kafka-helm-charts || exit;
./kafka_launch_script_delete.sh
)
