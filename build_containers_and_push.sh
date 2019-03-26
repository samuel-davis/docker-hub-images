#!/usr/bin/env bash
docker-compose -f compose.yml build
#docker login --username=samdavis2
docker push samdavis2/docker-compose-java:2.1
docker push samdavis2/npm-builder:1.3
#docker push samdavis2/docker-compose-java-ubuntu:2.1
#docker push samdavis2/nifi-no-volumes:1.8.0