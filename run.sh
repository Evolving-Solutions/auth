#!/bin/bash
# Script to run the docker image for keycloak

docker run -p 8080:8080 -p 8443:8443 evolvingsoftware/auth:latest