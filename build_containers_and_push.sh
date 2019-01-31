#!/usr/bin/env bash
docker-compose -f compose.yml build
docker login --username=samdavis2
docker push samdavis2/docker-compose-java:j8-1.24.0-rc1
docker push samdavis2/nifi-no-volumes:1.8.0