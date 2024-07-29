FROM thrnz/docker-wireguard-pia

COPY . .

ENV PRE_UP='source ./pre_up.sh'
ENV POST_UP='/bin/bash ./post_up.sh'
ENV SLSKD_HTTP_PORT=1024
ENV SLSKD_NO_AUTH=true
ENV SLSKD_SHARED_DIR=/shares
ENV PYTHONUNBUFFERED=1

RUN apk add --update --no-cache wget unzip icu-dev 
RUN wget https://github.com/slskd/slskd/releases/download/0.20.1/slskd-0.20.1-linux-musl-x64.zip  && unzip slskd-0.20.1-linux-musl-x64.zip  -d /slskd
