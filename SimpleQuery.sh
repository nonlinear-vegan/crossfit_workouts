#!/bin/bash

## simple query

index="workouts"
type="workout"

 queryString='{
   "query" :
  {
    "query_string" : 
    {
       "query" : "grace"
    }
  }
}'

#curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{
http 'POST' 'http://127.0.0.1:9200/workouts/workout/_search' <<< ${queryString}
#echo ${queryString} | http POST "http://127.0.0.1:9200/${index}/${type}/_search" 


echo
