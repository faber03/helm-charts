#!/usr/bin/env bash

counter=1
link_id=$1
#while [ $counter -le 10 ]
while [ true ]
do

  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose "MERGE ()-[s:STREET {linkId: ${link_id}}]->()
  SET s.avgTravelTime = 0.1, \
  s.sdTravelTime = 0.6, \
  s.numVehicles = 2, \
  s.timestamp = 1615842753053, \
  s.aggPeriod = duration({seconds: 139, nanoseconds: 1}), \
  s.startTime = localdatetime({year: 2015,month: 8,day: 5,hour: 0,minute: 0,second: 0,nanosecond: 0}), \
  s.endTime = localdatetime({year: 2018,month: 9,day: 6,hour: 0,minute: 2,second: 59,nanosecond: 0})"

  oc exec neo4j-neo4j-core-0 -- cypher-shell -u neo4j -p password --format verbose "MERGE ()-[s:STREET {linkId: ${link_id}}]->() \
  SET s.avgTravelTime = 1.1, \
  s.sdTravelTime = 0.2, \
  s.numVehicles = 3, \
  s.timestamp = 1615842753051, \
  s.aggPeriod = duration({seconds: 100, nanoseconds: 2}), \
  s.startTime = localdatetime({year: 2019,month: 7,day: 4,hour: 1,minute: 1,second: 1,nanosecond: 1}), \
  s.endTime = localdatetime({year: 2019,month: 8,day: 5,hour: 1,minute: 1,second: 1,nanosecond: 1})"

done
echo All done