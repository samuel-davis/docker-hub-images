FROM  docker/compose:1.24.0-rc1
LABEL maintainer="Sam Davis<sam.davis@techngs.com>"
LABEL site="https://samuel-davis.github.io"
# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
ENV JAVA_HOME=/opt/jdk
ENV PATH=${PATH}:/opt/jdk/bin

RUN apk update \
        && apk add --no-cache \
        wget \
        ca-certificates \
        bash \
        git \
        unzip \
        ffmpeg \
        libva-intel-driver \
        libstdc++ \
        curl \
        ca-certificates \
        bash \
        java-cacerts \
        && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
        && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-2.29-r0.apk \
        && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-bin-2.29-r0.apk \
        && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-i18n-2.29-r0.apk \
        && apk add glibc-2.29-r0.apk  \
        && apk add glibc-bin-2.29-r0.apk  \
        && apk add glibc-i18n-2.29-r0.apk  \
        && ( /usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8 ) \
        && echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh \
        && /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib \
        && mkdir -p /opt/jdk


#COPY ./setup.sh /setup.sh
COPY --from=anapsix/alpine-java:8_jdk /opt/jdk /opt/jdk

WORKDIR /app
COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
#CMD tail -f /dev/null
CMD ["/bin/bash"]


