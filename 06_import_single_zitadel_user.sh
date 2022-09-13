#!/bin/bash

set -eux

# Ensure this file exists and has the right payload for the endpoint
cat user-test.json

curl --request POST \
 --url http://localhost:8080/management/v1/users/human/_import \
 --header 'Content-Type: application/json' \
 --header "Authorization: Bearer ${ACCESS_TOKEN}." \
 --data @user-test.json
