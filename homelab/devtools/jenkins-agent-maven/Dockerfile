FROM jenkins/ssh-agent:jdk21

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        maven \
        git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

#USER jenkins
