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
curl -s -X POST -H 'Content-Type: application/json' --data @neo4j-sink_TEST-heap2.json  http://connect-neo4j-tesi-delucia.router.default.svc.cluster.local/connectors)


#update sink config
(cd config || exit;
curl -s -X PUT -H 'Content-Type: application/json' --data @neo4j-sink_TEST-heap2-update.json  http://connect-neo4j-tesi-delucia.router.default.svc.cluster.local/connectors/neo4j-sink/config)

#curl -X PUT -H "Content-Type: application/json" --data '{"connector.class":"io.confluent.connect.s3.S3SinkConnector","format.class":"io.confluent.connect.s3.format.bytearray.ByteArrayFormat","flush.size":"1000","s3.bucket.name":"s3-test-bucket","storage.class":"io.confluent.connect.s3.storage.S3Storage","tasks.max":"2","topics":"passengers","name":"s3-connector"}' localhost:8083/connectors/s3-connector/config | jq