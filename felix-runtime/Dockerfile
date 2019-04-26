FROM alpine:3.8
LABEL maintainer="Sam Davis<sam.davis@techngs.com>"


# Optional Configuration Parameter
ARG SERVICE_USER
ARG SERVICE_HOME
ARG FELIX_VERSION=6.0.2
# Default Settings
ENV FELIX_USER ${FELIX_USER:-felix}
ENV FELIX_BASE_DIR ${FELIX_BASE_DIR:-/opt/felix}

RUN mkdir -p ${FELIX_BASE_DIR} && \
adduser -h ${FELIX_BASE_DIR} -s /sbin/nologin -u 1000 -D ${FELIX_USER} && \
apk add --no-cache \
openjdk8 \
dumb-init \
bash \
git \
wget \
curl \
tcptraceroute \
iputils \
nmap  && \
chown -R ${FELIX_USER}:${FELIX_USER} ${FELIX_BASE_DIR}

WORKDIR ${FELIX_BASE_DIR}
COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh
ADD http://mirror.reverse.net/pub/apache//felix/org.apache.felix.main.distribution-${FELIX_VERSION}.zip .
RUN mkdir -p /servers/felix && unzip org.apache.felix.main.distribution-${FELIX_VERSION}.zip -d ${FELIX_BASE_DIR} &&\
mv felix-framework-${FELIX_VERSION}/* . && \
rm -rf felix-framework-${FELIX_VERSION}

WORKDIR ${FELIX_BASE_DIR}/bundle
RUN wget http://central.maven.org/maven2/org/glassfish/javax.annotation/3.1.1/javax.annotation-3.1.1.jar && \
wget http://central.maven.org/maven2/org/osgi/org.osgi.service.http/1.2.1/org.osgi.service.http-1.2.1.jar && \
wget http://central.maven.org/maven2/javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.scr/2.1.16/org.apache.felix.scr-2.1.16.jar && \
wget http://central.maven.org/maven2/org/osgi/org.osgi.util.promise/1.1.1/org.osgi.util.promise-1.1.1.jar && \
wget http://central.maven.org/maven2/org/osgi/org.osgi.compendium/5.0.0/org.osgi.compendium-5.0.0.jar && \
wget http://central.maven.org/maven2/org/osgi/org.osgi.util.function/1.1.0/org.osgi.util.function-1.1.0.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.dependencymanager/4.6.0/org.apache.felix.dependencymanager-4.6.0.jar && \
wget https://repo1.maven.org/maven2/org/apache/felix/org.apache.felix.webconsole/4.3.4/org.apache.felix.webconsole-4.3.4-all.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.scr/2.1.16/org.apache.felix.scr-2.1.16.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.configadmin/1.9.14/org.apache.felix.configadmin-1.9.14.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.eventadmin/1.5.0/org.apache.felix.eventadmin-1.5.0.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.metatype/1.2.2/org.apache.felix.metatype-1.2.2.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.log/1.2.0/org.apache.felix.log-1.2.0.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.http.jetty/4.0.8/org.apache.felix.http.jetty-4.0.8.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.http.servlet-api/1.1.2/org.apache.felix.http.servlet-api-1.1.2.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.http.whiteboard/4.0.0/org.apache.felix.http.whiteboard-4.0.0.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.webconsole.plugins.ds/2.1.0/org.apache.felix.webconsole.plugins.ds-2.1.0.jar && \
wget http://central.maven.org/maven2/org/apache/felix/org.apache.felix.webconsole.plugins.event/1.1.8/org.apache.felix.webconsole.plugins.event-1.1.8.jar
USER    ${FELIX_USER}

WORKDIR ${FELIX_BASE_DIR}
ENTRYPOINT [ "/usr/bin/dumb-init" ]
CMD ["/entrypoint.sh"]






