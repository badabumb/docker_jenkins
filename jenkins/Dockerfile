FROM jenkins/jenkins:lts

USER root

# Установим Docker CLI
RUN apt-get update && apt-get install -y \
    docker.io \
    docker-compose \
    && rm -rf /var/lib/apt/lists/*

USER jenkins