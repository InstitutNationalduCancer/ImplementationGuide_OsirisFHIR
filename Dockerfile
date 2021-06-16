FROM jruby:9.2.18.0-jdk11 as build-image

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y build-essential npm \
    && apt-get install -y iputils-ping \
    && apt-get autoremove --purge -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*


RUN gem install jekyll

RUN npm install -g fsh-sushi

WORKDIR /build

COPY _updatePublisher_curl.sh _updatePublisher_curl.sh
COPY _genonce.sh _genonce.sh
COPY input input
COPY ig.ini ig.ini
COPY sushi-config.yaml sushi-config.yaml
COPY package-list.json package-list.json

RUN ./_updatePublisher_curl.sh -y || echo "ok"

RUN ./_genonce.sh -y

FROM alpine:3.13

WORKDIR /app

COPY docker-entrypoint.sh /app/docker-entrypoint.sh
RUN chmod +x /app/docker-entrypoint.sh

COPY --from=build-image /build /app

ENTRYPOINT ["/app/docker-entrypoint.sh"]