#!/bin/bash
# Script to start keycloak in development mode

# Get environment variables from .env file

export $(grep -v '^#' .env | xargs)

# Start keycloak

echo Connecting to postgres at $DB_URL
echo Using Username: $DB_USERNAME
echo Password: $DB_PASSWORD

# # ./bin/kc.sh build
# ./bin/kc.sh start-dev  --db postgres --db-url-host localhost --db-username keycloak --db-password keycloak
