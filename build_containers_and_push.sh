#!/usr/bin/env bash
export NIFI_VERSION=1.8.0
export COMPOSE_BUILDER_VERSION=2.4
export NPM_BUILDER_VERSION=1.3


docker-compose -f compose.yml build
#docker login --username=samdavis2
docker push samdavis2/docker-compose-java:$COMPOSE_BUILDER_VERSION
#docker push samdavis2/npm-builder:$NPM_BUILDER_VERSION
#docker push samdavis2/nifi-no-volumes:$NIFI_VERSION