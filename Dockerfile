FROM openjdk:8-jdk-alpine
RUN apk add --no-cache tzdata
ENV TZ Asia/Seoul
COPY build/libs/test-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
