FROM jruby:9.2.17.0-jdk11 as build-image

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

COPY . .

RUN ./_updatePublisher.sh -y || echo "ok"

RUN ./_genonce.sh -y

FROM scratch

COPY --from=build-image /build /app
COPY --from=build-image /bin/sh /bin/sh

CMD /bin/sh