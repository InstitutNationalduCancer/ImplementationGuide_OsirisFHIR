FROM alpine:3.13 as build-image

WORKDIR /build

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
    build-base \
    npm \
    curl \
    iputils \
    ruby-full \
    ruby-dev \
    fontconfig \
    openjdk11 \
    bash

RUN gem install jekyll
RUN npm install -g fsh-sushi

COPY _updatePublisher_curl.sh _updatePublisher_curl.sh
COPY _genonce.sh _genonce.sh
RUN ./_updatePublisher_curl.sh -y

COPY input input
COPY ig.ini ig.ini
COPY sushi-config.yaml sushi-config.yaml
COPY package-list.json package-list.json

RUN chmod +x _genonce.sh
RUN ./_genonce.sh -y

FROM alpine:3.13

WORKDIR /app

COPY docker-entrypoint.sh /app/docker-entrypoint.sh
RUN chmod +x /app/docker-entrypoint.sh

COPY --from=build-image /build /app

ENTRYPOINT ["/app/docker-entrypoint.sh"]
