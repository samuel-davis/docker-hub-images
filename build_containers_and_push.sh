#!/usr/bin/env bash
docker-compose -f compose.yml build

#docker login --username=samdavis2
#docker push samdavis2/docker-compose-java:2.2
#docker push samdavis2/npm-builder:1.3
#docker push samdavis2/felix-runtime:1.0
docker push samdavis2/nifi-no-volumes:1.9.2