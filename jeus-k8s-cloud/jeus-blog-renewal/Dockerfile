#Build Application
FROM openjdk:11 AS builder
LABEL description="Jeus blog builder"
WORKDIR jeus-blog
RUN git clone https://github.com/sambunarayan/jeus-blog-renewal.git
RUN git pull
RUN mvn instal clean -P staging

FROM openjdk:11
ENTRYPOINT ["java", "-jar", "jeus-blog-renewal/target/jeus-blog-renewal-1.0.jar"]
