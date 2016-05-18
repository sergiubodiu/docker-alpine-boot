# Docker base image for Spring Boot.
FROM sbodiu/m2
MAINTAINER Sergiu Bodiu <sbodiu@pivotal.io>

RUN cd /tmp && \
    curl https://start.spring.io/starter.tgz -d dependencies=web,actuator \
    -d language=java -d bootVersion=1.3.5.RELEASE -d type=maven-project | tar -xzvf - 
RUN mvn clean package && \ 
    rm -rf /tmp/*
