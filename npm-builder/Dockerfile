FROM ubuntu:18.04
LABEL maintainer="Sam Davis<sam.davis@techngs.com>"
LABEL site="https://samuel-davis.github.io"
# Install Node and NPM
ADD testcafe-docker.sh /testcafe-docker.sh
ADD google-chrome /opt/google/chrome-unstable/google-chrome-unstable
RUN apt update && apt install -yqq wget \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get install -yqq --no-install-recommends net-tools \
     git \
     inetutils-ping \
     dnsutils \
     curl \
     traceroute \
     ca-certificates \
     gcc \
     g++ \
     make \
     build-essential \
     libgconf-2-4 \
     libcairo2-dev \
     libjpeg-dev \
     libgif-dev \
     chromium-browser \
     xvfb \
     dbus \
     udev \
     fonts-freefont-ttf \
     fluxbox \
     procps \
     nodejs \
     nano \
     firefox \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg-agent \
     software-properties-common \
     xvfb \
     x11-xkb-utils \
     xfonts-100dpi \
     xfonts-75dpi \
     xfonts-scalable \
     xfonts-cyrillic \
     x11-apps \
     clang \
     libdbus-1-dev \
     libgtk2.0-dev \
     libnotify-dev \
     libgnome-keyring-dev \
     libgconf2-dev \
     libasound2-dev \
     libcap-dev \
     libcups2-dev \
     libxtst-dev \
     libxss1 \
     libnss3-dev \
     gcc-multilib \
     g++-multilib \
     && add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
     && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
     && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
     && apt update \
     && apt-get install -yqq --no-install-recommends docker-ce docker-ce-cli containerd.io google-chrome-unstable \
     && apt-get clean \
     && rm -rf /var/lib/apt/lists/* \
     && wget https://github.com/jgm/pandoc/releases/download/2.7.1/pandoc-2.7.1-1-amd64.deb \
     && dpkg -i pandoc-2.7.1-1-amd64.deb \
     && rm pandoc-2.7.1-1-amd64.deb \
     && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
     && chmod 777 /testcafe-docker.sh \
     && chmod 777 /opt/google/chrome-unstable/google-chrome-unstable \
     && npm install -g testcafe

ENTRYPOINT ["/testcafe-docker.sh"]




