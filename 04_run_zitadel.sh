#!/bin/bash

set -eux

# Download the docker compose example configuration.
$ wget https://raw.githubusercontent.com/zitadel/zitadel/main/docs/docs/guides/deploy/docker-compose.yaml

# Run the database and application containers. It will start both the database and the web-server components
$ docker compose up --detach
