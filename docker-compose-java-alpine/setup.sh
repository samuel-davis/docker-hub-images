#!/usr/bin/env sh
echo 'installing apk packages'
apk update \
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
    java-cacerts
