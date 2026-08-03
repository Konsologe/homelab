FROM jenkins/jenkins:lts

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/ref/casc_configs/jenkins.yaml

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=jenkins:jenkins casc/jenkins-casc.yaml /usr/share/jenkins/ref/casc_configs/jenkins.yaml
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt

#USER jenkins

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
