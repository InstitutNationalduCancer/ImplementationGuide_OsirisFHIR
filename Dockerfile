FROM alpine:3.18 as build-image

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
    ttf-dejavu \
    openjdk11 \
    bash

# the following line is a fix for https://github.com/sass/dart-sass-embedded/issues/106#issuecomment-1374950950
RUN gem install jekyll-sass-converter -v '~>2.0'
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

FROM alpine:3.18

WORKDIR /app

COPY docker-entrypoint.sh /app/docker-entrypoint.sh
RUN chmod +x /app/docker-entrypoint.sh

COPY --from=build-image /build /app

ENTRYPOINT ["/app/docker-entrypoint.sh"]
