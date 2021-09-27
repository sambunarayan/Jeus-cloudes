FROM maven:3.6.1-jdk-8 as builder
LABEL description="Java Application builder"
RUN git clone https://github.com/sambunarayan/jeus-apis.git
WORKDIR jeus-apis/jeus-echo
RUN git pull
RUN mvn install

FROM payara/server-full:latest
LABEL description="Echo IP Java Application"
COPY --from=builder jeus-apis/jeus-echo/target/jeus-echo-1.0.0.war /opt/payara/appserver/glassfish/domains/domain1/autodeploy/jeus-echo.war
WORKDIR /opt/payara/deployments
