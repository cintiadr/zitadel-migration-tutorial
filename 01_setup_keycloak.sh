#!/bin/bash

set -eux

# Run keycloak as a docker container
docker run -d -p 8081:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:19.0.1 start-dev 