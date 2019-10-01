FROM openjdk:8-jdk-alpine
RUN mkdir /app
WORKDIR /app
COPY ./gradlew /app
COPY ./build.gradle.kts /app
COPY ./settings.gradle.kts /app
COPY ./src /app/src
COPY ./gradle /app/gradle
ENTRYPOINT ["sh", "./gradlew", "bootRun"]
