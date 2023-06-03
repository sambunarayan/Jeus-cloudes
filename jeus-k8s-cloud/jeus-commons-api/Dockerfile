FROM maven:3.8.3-jdk-17 as builder
LABEL description="Java Application builder"
RUN git clone https://github.com/sambunarayan/jeus-commons-api.git
RUN git pull
RUN mvn install

FROM openjdk:17-jdk-slim
LABEL description="Jeus common api Application"
EXPOSE 8080
COPY --from=builder jeus-commons-api/target/jeus-commons-api-1.0-SNAPSHOT.jar /usr/src/myapp/jeus-commons-api-1.0-SNAPSHOT.jar
WORKDIR /usr/src/myapp
ENTRYPOINT [ "java", "-jar", "jeus-commons-api-1.0-SNAPSHOT.jar" ]