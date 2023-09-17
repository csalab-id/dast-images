FROM ubuntu:22.04
COPY --chown=root:root --chmod=755 chromedriver /usr/bin/chromedriver
COPY arachni /opt/arachni
RUN apt update && \
apt install curl wget && \
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
dpkg -i google-chrome-stable_current_amd64.deb && \
apt -f -y install && \
useradd -m -c "Dast User" -s /bin/bash -d /home/dast dast