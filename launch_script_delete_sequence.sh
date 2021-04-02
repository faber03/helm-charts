#!/usr/bin/env bash

oc login -u adelucia -p fr57gyL master.unisannio.local:8443

oc project tesi-delucia

#NEO4j
#-----
helm delete neo4j
#oc delete pvc datadir-neo4j-neo4j-core-0
#oc delete pvc datadir-neo4j-neo4j-core-1
#oc delete pvc datadir-neo4j-neo4j-core-2

#ARTEMIS
#-------
helm delete artemis
oc delete pvc data-artemis-activemq-artemis-master-0
oc delete pvc artemis-activemq-artemis

#KAFKA
#-----
helm delete kafka

  #eliminazione topik da terminale pod
  #------------------------------------
  #kafka-topics --zookeeper kafka-cp-zookeeper-headless:2181 --delete --topic '.*-Northbound'
  #kafka-topics --zookeeper kafka-cp-zookeeper-headless:2181 --delete --topic 'kafka-connect-(artemis|neo4j).*'

  #kafka-topics --zookeeper kafka-cp-zookeeper-headless:2181 --list
  #kafka-topics --zookeeper kafka-cp-zookeeper-headless:2181 --delete --topic 'kafka-connect-.*'

#KAFKA-CONNECT ARTEMIS
#---------------------
helm delete kafka-connect-artemis

#KAFKA-CONNECT NEO4j
#-------------------
helm delete kafka-connect-neo4j

#KAFKA PVC
#----------
oc delete pvc datadir-kafka-cp-zookeeper-2
oc delete pvc datadir-kafka-cp-zookeeper-1
oc delete pvc datadir-kafka-cp-zookeeper-0
oc delete pvc datadir-0-kafka-cp-kafka-2
oc delete pvc datadir-0-kafka-cp-kafka-1
oc delete pvc datadir-0-kafka-cp-kafka-0
oc delete pvc datalogdir-kafka-cp-zookeeper-0
oc delete pvc datalogdir-kafka-cp-zookeeper-1
oc delete pvc datalogdir-kafka-cp-zookeeper-2

#eliminazione connettori
#-----------------------
curl -s -X DELETE http://connect-neo4j-tesi-delucia.router.default.svc.cluster.local/connectors/artemis-source

curl -s -X DELETE http://connect-neo4j-tesi-delucia.router.default.svc.cluster.local/connectors/neo4j-sink


