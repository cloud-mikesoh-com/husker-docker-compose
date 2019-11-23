#!/bin/sh

echo Bringing up docker containers using docker-compose

/usr/local/bin/docker-compose -f ~/docker/docker-compose.yml up -d

echo Done.  To update:
echo "    docker-compose up"

echo
echo To bring down:
echo "   docker-compose down"
