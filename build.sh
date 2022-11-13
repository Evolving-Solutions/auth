#!/bin/bash
# Script to build docker image for keycloak
# Get environment variables from .env file

export $(grep -v '^#' .env | xargs)

# Build docker image

echo $DB_URL
echo $DB_USERNAME
echo $DB_PASSWORD

docker build -t evolvingsoftware/auth .