#!/usr/bin/env bash

curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Lyon-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Lyon-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Venissieux-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Venissieux-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Vienne-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Vienne-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Meyzieu-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Meyzieu-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Caluire-et-Cuire-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Caluire-et-Cuire-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Saint-Genis-Laval-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Saint-Genis-Laval-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Saint-Quentin-Fallavier-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Saint-Quentin-Fallavier-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Genas-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Genas-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Ecully-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Ecully-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Dardilly-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Dardilly-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Sainte-Foy-les-Lyon-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Sainte-Foy-les-Lyon-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Villefontaine-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Villefontaine-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Chassieu-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Chassieu-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Tassin-la-Demi-Lune-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Tassin-la-Demi-Lune-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Charvieu-Chavagneux-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Charvieu-Chavagneux-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Miribel-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Miribel-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Saint-Laurent-de-Mure-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Saint-Laurent-de-Mure-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Oullins-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Oullins-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Montluel-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Montluel-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1
curl -X POST -H "Content-Type: application/json" -d  '{ "type": "EXEC", "mbean": "org.apache.activemq.artemis:address=\"Heyrieux-Northbound\",broker=\"0.0.0.0\",component=addresses,queue=\"Heyrieux-Northbound\",routing-type=\"anycast\",subcomponent=queues", "operation": "removeMessages(java.lang.String)", "arguments": [ "" ] }' -u licit:licit  http://172.18.10.147:30341/console/jolokia/exec
sleep 1