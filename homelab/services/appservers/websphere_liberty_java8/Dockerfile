FROM icr.io/appcafe/websphere-liberty:full-java8-openj9-ubi-minimal

USER root

COPY server.xml /opt/ibm/wlp/usr/servers/defaultServer/server.xml

RUN chown -R 1001:0 /opt/ibm/wlp/usr/servers/defaultServer \
    && chmod -R g+rw /opt/ibm/wlp/usr/servers/defaultServer

COPY apps/ /config/apps/

USER 1001
