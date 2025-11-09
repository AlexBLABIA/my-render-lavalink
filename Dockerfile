# Java 17 是 Lavalink v4 的推荐版本
FROM eclipse-temurin:17-jre-alpine

RUN apk add --no-cache libgcc

WORKDIR /app
ARG LAVALINK_VERSION=4.0.6
ADD https://github.com/lavalink-devs/Lavalink/releases/download/${LAVALINK_VERSION}/Lavalink.jar /app/Lavalink.jar
COPY application.yml /app/application.yml
ENV JAVA_TOOL_OPTIONS="-Xms256m -Xmx380m"
CMD ["java", "-jar", "Lavalink.jar"]

