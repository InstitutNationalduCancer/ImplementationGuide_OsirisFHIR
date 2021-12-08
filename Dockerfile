FROM jekyll/jekyll:4.2.0 as build-image

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
        build-base \
        npm \
        curl \
        iputils

RUN npm install -g fsh-sushi

WORKDIR /build

COPY --chmod=777 _updatePublisher_curl.sh _updatePublisher_curl.sh
COPY --chmod=777 _genonce.sh _genonce.sh
COPY input input
COPY ig.ini ig.ini
COPY sushi-config.yaml sushi-config.yaml
COPY package-list.json package-list.json

RUN ./_updatePublisher_curl.sh -y

RUN ./_genonce.sh -y

FROM alpine:3.13

WORKDIR /app

COPY docker-entrypoint.sh /app/docker-entrypoint.sh
RUN chmod +x /app/docker-entrypoint.sh

COPY --from=build-image /build /app

ENTRYPOINT ["/app/docker-entrypoint.sh"]
