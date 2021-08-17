#!/bin/sh

echo Making sure you have the latest images:
/usr/local/bin/docker-compose pull

echo Bringing up docker containers using docker-compose
/usr/local/bin/docker-compose -f ~docker/husker-services/docker-compose.yml up -d

echo Done.  To update:
echo "    docker-compose pull && docker-compose up"

echo
echo To bring down:
echo "   docker-compose down"
