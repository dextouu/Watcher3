FROM python:3.6-alpine
LABEL author="dextou"

ENV UID=991 GID=991

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install git
RUN apk add --no-cache git \
                       su-exec\
                       tini

# install app
RUN git clone https://github.com/nosmokingbandit/Watcher3.git /app/watcher3

COPY run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/run.sh

# ports and volumes
EXPOSE 9090
WORKDIR /app/watcher3
VOLUME /config /downloads /movies

CMD ["run.sh"]