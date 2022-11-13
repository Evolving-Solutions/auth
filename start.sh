#!/bin/bash
# Script to start keycloak in development mode

# Get environment variables from .env file

export $(grep -v '^#' .env | xargs)

# Start keycloak

 ./bin/kc.sh build
 ./bin/kc.sh start-dev  --db postgres --db-url-host  $DB_URL --db-username  $DB_USERNAME --db-password  $DB_PASSWORD