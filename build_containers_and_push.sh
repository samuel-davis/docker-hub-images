#!/usr/bin/env bash
export NIFI_VERSION=1.8.0
export COMPOSE_BUILDER_VERSION=2.6
export NPM_BUILDER_VERSION=1.3


docker-compose -f compose.yml build
#docker login --username=samdavis2
docker push samdavis2/docker-compose-java:$COMPOSE_BUILDER_VERSION
docker tag samdavis2/docker-compose-java-di2e:$COMPOSE_BUILDER_VERSION docker-di2e.di2e.net/dlvp/docker-compose-java:$COMPOSE_BUILDER_VERSION
docker push docker-di2e.di2e.net/dlvp/docker-compose-java:$COMPOSE_BUILDER_VERSION
#docker push samdavis2/npm-builder:$NPM_BUILDER_VERSION
#docker push samdavis2/nifi-no-volumes:$NIFI_VERSION