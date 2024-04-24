FROM gradle:7.2-jdk11

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . ./
RUN ./gradlew clean build fatJar

EXPOSE 17777

ENTRYPOINT ./misc/scripts/standalone/server.sh