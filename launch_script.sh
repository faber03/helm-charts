#!/usr/bin/env bash

oc login --username=licit --password=licit

oc project promenade

cd mongodb || exit

helm delete mongodb-replicaset

helm install mongodb-replicaset .

cd ..

cd activemq-artemis/activemq-artemis || exit

helm delete artemis

helm install artemis .

cd ../..

cd cp-kafka-helm-charts || exit

./kafka_launch_script.sh