#Build Application
FROM openjdk:8 AS builder
RUN git clone https://github.com/sambunarayan/jeus-apis.git
WORKDIR jeus-apis
RUN git pull
RUN ls -ltr .

FROM gradle:7.3.0-jdk11-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
COPY --from=builder jeus-apis/jeus-todo/* /home/gradle/src/
RUN ls -ltr .
RUN gradle --version
RUN gradle build --no-daemon

USER root
#RUN chmod 777 gradlew
RUN pwd
RUN ["gradlew", "build"]

FROM gcr.io/distroless/java:8
EXPOSE 60433
COPY --from=build /home/gradle/src/build/libs/jeus-todo-1.0-SNAPSHOT.jar /opt/jeus-todo-1.0-SNAPSHOT.jar
WORKDIR /opt
ENTRYPOINT ["java", "-jar", "jeus-todo-1.0-SNAPSHOT.jar"]
