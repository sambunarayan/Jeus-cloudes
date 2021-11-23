#Build Application
FROM openjdk:8 AS builder
RUN apt-get clean
ADD dummyfile .
RUN git clone https://github.com/sambunarayan/jeus-apis.git
WORKDIR jeus-apis/jeus-todo/
ADD application-oauth.properties src/main/resources
RUN git pull
RUN chmod 777 *
RUN ./gradlew clean build

FROM gcr.io/distroless/java:8
EXPOSE 60433
COPY --from=builder jeus-apis/jeus-todo/build/libs/jeus-todo-1.0.0.jar /opt/jeus-todo-1.0.0.jar
WORKDIR /opt
ENTRYPOINT ["java", "-jar", "jeus-todo-1.0.0.jar"]
