FROM ubuntu:18.04
LABEL maintainer="Sam Davis<sam.davis@techngs.com>"
RUN apt update && apt install -yqq wget \
 net-tools \
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
 procps

# Install Chrome Browser ?
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
&& apt-get update \
&& apt-get install -yqq google-chrome-unstable --no-install-recommends
# Install Pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/2.7.1/pandoc-2.7.1-1-amd64.deb &&\
 dpkg -i pandoc-2.7.1-1-amd64.deb
# Install Node and NPM
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt update &&\
 apt install -yqq nodejs nano firefox

ADD testcafe-docker.sh /testcafe-docker.sh
RUN chmod 777 /testcafe-docker.sh
# Install for Deployment (Vagrant and VirtualBox)
# Getting this to work is lowest priority.
#RUN apt install -yqq virtualbox vagrant


#Fix Chrome to Work from Root User
#RUN sed -i -e 's@Exec=/usr/bin/google-chrome-unstable %U@Exec=/usr/bin/google-chrome-unstable %U --no-sandbox@g' /usr/share/applications/google-chrome-unstable.desktop
ADD google-chrome /opt/google/chrome-unstable/google-chrome-unstable
RUN chmod 777 /opt/google/chrome-unstable/google-chrome-unstable

#RUN ln -s  /opt/google/chrome-unstable/google-chrome /opt/google/chrome-unstable/google-chrome-unstable

#RUN useradd -ms /bin/bash jenkins
#RUN groupadd docker && usermod -aG docker jenkins && usermod -a -G sudo jenkins
#USER jenkins
#WORKDIR /home/jenkins


#Install Docker
RUN  apt-get install -yqq \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common
RUN  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable" && apt update
RUN apt install -yqq docker-ce docker-ce-cli containerd.io
RUN npm install -g testcafe
RUN apt-get install -yqq xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps clang libdbus-1-dev libgtk2.0-dev libnotify-dev libgnome-keyring-dev libgconf2-dev libasound2-dev libcap-dev libcups2-dev libxtst-dev libxss1 libnss3-dev gcc-multilib g++-multilib



# Clean Apt Cache and Package Indexes
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/testcafe-docker.sh"]




