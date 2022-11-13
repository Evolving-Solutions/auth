FROM registry.access.redhat.com/ubi8-minimal

RUN microdnf update -y && microdnf install -y glibc-langpack-en gzip hostname java-11-openjdk-headless nodejs openssl tar which && microdnf clean all

RUN npm install -g yarn

USER 1000

EXPOSE 8080

WORKDIR /home/keycloak

COPY --chown=1000:0 / /home/keycloak

# Make start.sh executable
RUN chmod +x /home/keycloak/start.sh

# RUN start.sh
CMD ["/home/keycloak/start.sh"]
