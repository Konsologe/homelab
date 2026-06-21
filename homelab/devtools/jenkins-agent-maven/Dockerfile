FROM jenkins/ssh-agent:jdk21

USER root

RUN apt-get update \
    && apt-get install -y \
       maven \
       git \
       docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 121 dockerhost || true \
    && usermod -aG dockerhost jenkins

USER root

RUN docker --version

#USER jenkins
