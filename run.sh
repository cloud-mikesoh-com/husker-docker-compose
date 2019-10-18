#!/bin/sh

echo Bringing up docker containers using docker-compose

docker-compose up -d

echo Done.  To update:
echo "    docker-compose up"

echo
echo To bring down:
echo "   docker-compose down"
