#!/usr/bin/env bash
FELIX_VERSION=6.0.2

wget http://mirror.reverse.net/pub/apache//felix/org.apache.felix.main.distribution-${FELIX_VERSION}.zip
unzip org.apache.felix.main.distribution-${FELIX_VERSION}.zip -d .
rm -rf felix-framework-${FELIX_VERSION}.zip
cd felix-framework-${FELIX_VERSION}/bundle
wget http://central.maven.org/maven2/org/glassfish/javax.annotation/3.1.1/javax.annotation-3.1.1.jar && \
wget http://central.maven.org/maven2/org/apache/aries/blueprint/org.apache.aries.blueprint.core.compatibility/1.0.0/org.apache.aries.blueprint.core.compatibility-1.0.0.jar && \
wget http://central.maven.org/maven2/org/apache/aries/blueprint/org.apache.aries.blueprint.api/1.0.1/org.apache.aries.blueprint.api-1.0.1.jar && \
wget http://central.maven.org/maven2/org/apache/aries/blueprint/org.apache.aries.blueprint.cm/1.3.1/org.apache.aries.blueprint.cm-1.3.1.jar && \
wget http://central.maven.org/maven2/org/apache/aries/blueprint/org.apache.aries.blueprint.core/1.10.2/org.apache.aries.blueprint.core-1.10.2.jar && \
wget http://central.maven.org/maven2/org/apache/aries/proxy/org.apache.aries.proxy/1.1.4/org.apache.aries.proxy-1.1.4.jar && \
wget http://central.maven.org/maven2/org/apache/aries/proxy/org.apache.aries.proxy.api/1.1.0/org.apache.aries.proxy.api-1.1.0.jar && \
wget http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.26/slf4j-api-1.7.26.jar && \
wget http://central.maven.org/maven2/org/slf4j/slf4j-simple/1.7.26/slf4j-simple-1.7.26.jar && \
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
