FROM docker/compose:1.24.0-rc1
LABEL maintainer="Sam Davis<sam.davis@techngs.com>"
LABEL site="https://samuel-davis.github.io"
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
# add a simple script that can auto-detect the appropriate JAVA_HOME value
# based on whether the JDK or only the JRE is installed
RUN apk update \
    && apk add --no-cache \
    openjdk8-jre \
    wget \
    ca-certificates \
    bash \
    git \
    unzip
COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

#CMD tail -f /dev/null
CMD ["/bin/bash"]


