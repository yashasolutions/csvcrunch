#!/bin/bash

docker stop csvcrunch
docker rm csvcrunch
docker-compose -f postgre.yml up -d
sleep 5
docker exec -i csvcrunch psql -U gorm gorm < sql/importusersource1.sql 
sleep 2
docker exec -i csvcrunch psql -U gorm gorm < sql/importusersource2.sql 
sleep 2
docker exec -i csvcrunch psql -U gorm gorm < sql/importusersource3.sql
