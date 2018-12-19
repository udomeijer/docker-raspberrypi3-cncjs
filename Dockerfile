FROM balenalib/raspberrypi3-node:8

MAINTAINER Udo Meijer <umeijer@gmail.com>

ENV CNCJS_VERSION=1.9.15

RUN apt-get update \
 && apt-get install build-essential python \
 && rm -rf /var/lib/apt/lists/* \
 && npm install -g --unsafe-perm cncjs@$CNCJS_VERSION

EXPOSE 8000

CMD ["cncjs"]
