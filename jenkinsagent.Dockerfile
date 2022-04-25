FROM jenkins/inbound-agent


# Install Docker client
USER root
RUN apt update && apt install -y curl
RUN curl -fsSL https://get.docker.com | bash
RUN docker -v