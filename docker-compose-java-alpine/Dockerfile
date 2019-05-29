FROM docker/compose:1.24.0-rc1
LABEL maintainer="Sam Davis<sam.davis@techngs.com>"
LABEL site="https://samuel-davis.github.io"
ENV JAVA_VERSION=8 \
    JAVA_UPDATE=202 \
    JAVA_BUILD=08 \
    JAVA_PATH=1961070e4c9b4e26a04e7f5a083f551e \
    JAVA_HOME="/usr/lib/jvm/default-jvm"

RUN apk update && apk add --no-cache --virtual=build-dependencies wget ca-certificates bash git unzip openjdk8 && apk del build-dependencies

COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

#CMD tail -f /dev/null
CMD ["/bin/bash"]


