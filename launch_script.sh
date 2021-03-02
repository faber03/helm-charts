#!/usr/bin/env bash

oc login

cd mongodb || exit

helm delete mongodb-replicaset

helm install mongodb-replicaset .