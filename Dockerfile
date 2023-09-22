FROM eclipse-temurin:20-jdk

ARG GRADLE_VERSION=8.3

WORKDIR /app

COPY ./ .

RUN gradle installDist

CMD build/install/app/bin/app