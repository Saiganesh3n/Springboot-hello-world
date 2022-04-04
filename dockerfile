FROM openjdk:8-alpine

RUN apk update && mkdir -p /opt/app

ENV PROJECT_HOME /opt/app

COPY target/spring-boot-hello-world.jar $PROJECT_HOME/spring-boot-hello-world.jar

WORKDIR $PROJECT_HOME

EXPOSE 8080

CMD ["java","-jar","./spring-boot-hello-world.jar"]
