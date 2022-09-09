#Build Application
FROM openjdk:11 AS builder
LABEL description="Jeus blog builder"
WORKDIR jeus-blog
RUN git clone https://github.com/sambunarayan/jeus-blog-renewal.git
WORKDIR jeus-blog-renewal
RUN chmod 700 mvnw
RUN mvn instal clean -P staging

COPY ./target/jeus-blog-renewal-1.0.jar /opt/jeus-blog-renewal-1.0.jar
WORKDIR /opt
ENTRYPOINT [ "java", "-jar", "jeus-blog-renewal-1.0.jar" ]