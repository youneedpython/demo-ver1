FROM openjdk:17-jdk-slim
#FROM openjdk:11-ea-17-jdk-slim

WORKDIR /good

COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./demo.jar

COPY hello.sh ./hello.sh

RUN chmod +x ./hello.sh

ENTRYPOINT [ "sh", "./hello.sh" ]