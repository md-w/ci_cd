FROM jenkins/jenkins:lts-jdk11
USER jenkins
COPY --chown=jenkins:jenkins executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY --chown=jenkins:jenkins jenkinsmaster_plugins.txt /usr/share/jenkins/ref/jenkinsmaster_plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/jenkinsmaster_plugins.txt