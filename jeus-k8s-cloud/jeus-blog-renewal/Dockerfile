#Build Application
FROM openjdk:11 AS builder
LABEL description="Jeus blog builder"
RUN git clone https://github.com/sambunarayan/jeus-blog-renewal.git
WORKDIR jeus-blog-renewal
RUN git pull
RUN chmod 700 mvnw
RUN ./mvnw clean install -P staging

FROM openjdk:11
EXPOSE 8080
COPY --from=builder jeus-blog-renewal/target/jeus-blog-renewal-1.0.jar /usr/src/myapp/jeus-blog-renewal-1.0.jar
WORKDIR /usr/src/myapp
ENTRYPOINT [ "java", "-jar", "jeus-blog-renewal-1.0.jar" ]