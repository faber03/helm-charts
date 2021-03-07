#!/usr/bin/env bash

helm install kafka .

sleep 100

(cd charts/cp-kafka-connect-artemis || exit
helm install kafka-connect-artemis .)

(cd cp-kafka-connect-neo4j/ || exit
helm install kafka-connect-neo4j .)