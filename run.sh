#!/bin/bash
# Script to run the docker image for keycloak

docker run -p 8080:8080 -p 8443:8443 -e DB_URL=34.130.156.23 -e DB_PASSWORD=spike2 -e DB_USERNAME=keycloak evolvingsoftware/auth