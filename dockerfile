FROM openjdk:8-alpine

RUN apk update && mkdir -p /opt/app

ENV PROJECT_HOME /opt/app

COPY target/hello-world-1.0.1-SNAPSHOT.jar $PROJECT_HOME/hello-world-1.0.1-SNAPSHOT.jar

WORKDIR $PROJECT_HOME

EXPOSE 8080

CMD ["java","-jar","hello-world-1.0.1-SNAPSHOT.jar"]
