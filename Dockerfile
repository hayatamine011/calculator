FROM jenkins:latest
USER root
RUN apt-get update && \
        apt-get install -y ansible;
USER jenkins