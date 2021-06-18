#!/usr/bin/env bash

counter=1
node_id=$1
#while [ $counter -le 10 ]
while [ true ]
do

  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:99999}) \
  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"

#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:5982}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:273}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:125403}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:62073}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:150166}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:102944}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:105634}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:59739}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"
#
#  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose " \
#  MATCH (start:Intersection{osmid:${node_id}}), (end:Intersection{osmid:102945}) \
#  CALL algo.shortestPath.stream(start, end, 'weight',{direction:'OUTGOING'}) \
#  YIELD nodeId, cost RETURN algo.asNode(nodeId).osmid as vertexKeys;"

done
echo All done