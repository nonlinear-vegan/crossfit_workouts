#!/bin/bash

## search index for given type

index="workouts"
type="workout"

 queryString='{
   "query" :
  {
    "query_string" : 
    {
       "query" : "kettle"
    }
  }
}'

## add document
#curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{
echo ${queryString} | http POST "http://127.0.0.1:9200/${index}/${type}/_search" 

#http POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{ 
#"query" :
#  {
#    "query_string" : 
#    {
#       "query" : "kettle"
#    }
#  }
#}'

echo
