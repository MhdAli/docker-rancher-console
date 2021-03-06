FROM rancher/os-debianconsole:v0.4.3

ADD saltstack.list /etc/apt/sources.list.d/
RUN apt-get update \
      && apt-get -y install wget vim \
      && wget -O - https://repo.saltstack.com/apt/debian/8/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add - \
      && apt-get update \
      && apt-get -y install salt-minion

