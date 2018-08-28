FROM node:8.9

# Install docker

RUN apt-get -y --fix-missing update \
  && apt-get -y install \
    ca-certificates \
    curl \
    openssl \
    python-setuptools \
    python-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL test.docker.com -o test-docker.sh
RUN sh test-docker.sh

RUN easy_install pip && pip install docker-compose

CMD [ "node" ]
