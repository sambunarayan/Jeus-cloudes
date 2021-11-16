FROM gcr.io/distroless/java:8
EXPOSE 60433
COPY ./jeus-apis/jeus-todo/build/libs/jeus-todo-1.0-SNAPSHOT.jar /opt/jeus-todo-1.0-SNAPSHOT.jar
WORKDIR /opt
ENTRYPOINT ["java", "-jar", "jeus-todo-1.0-SNAPSHOT.jar"]
