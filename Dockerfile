# Java 17 是 Lavalink v4 的推荐版本
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# 版本号可以改，保持与官方发布一致
ARG LAVALINK_VERSION=4.0.6
ADD https://github.com/lavalink-devs/Lavalink/releases/download/${LAVALINK_VERSION}/Lavalink.jar /app/Lavalink.jar

# 配置文件
COPY application.yml /app/application.yml

# Render 会注入 $PORT；application.yml 里已经用 ${PORT:2333} 读取
ENV JAVA_TOOL_OPTIONS="-Xms256m -Xmx380m"

# 直接跑 jar
CMD ["java","-jar","Lavalink.jar"]
