#Build Application
FROM openjdk:11 AS builder
LABEL description="Jeus blog builder"
RUN git clone https://github.com/sambunarayan/jeus-blog.git
WORKDIR jeus-blog
RUN git pull
RUN chmod 700 gradlew
RUN ./gradlew clean build -Penv=stg -x test

FROM openjdk:11
EXPOSE 8080
COPY --from=builder jeus-blog/build/libs/jeus-blog-1.0.jar /usr/src/myapp/jeus-blog-1.0.jar
WORKDIR /usr/src/myapp
ENTRYPOINT ["java", "-jar", "jeus-blog-1.0.jar"]
