#!/bin/bash

set -eux


# Recover the Container ID for Keycloak
DOCKER_CONTAINER_ID=$(docker ps | fgrep keycloak | cut -f1 -d\  )

# Starting an export command inside the Keycloak container
# use the container ID of Keycloak to run the export command
docker exec -it ${DOCKER_CONTAINER_ID} /opt/keycloak/bin/kc.sh export --dir /tmp || true

# copy generated files from docker container to local machine
# Please note the file is named after the realm created
docker cp ${DOCKER_CONTAINER_ID}:/tmp/Test-Realm-users-0.json .
