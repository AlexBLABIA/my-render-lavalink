FROM eclipse-temurin:17-jre-alpine

# 这行你已经加过了，保留
RUN apk add --no-cache libgcc

WORKDIR /app

# ✅ 改成下载 Lavalink v3（目前比较常用的是 3.7.10）
ADD https://github.com/freyacodes/Lavalink/releases/download/3.7.10/Lavalink.jar /app/Lavalink.jar

# 复制 v3 用的 application.yml
COPY application.yml /app/application.yml

CMD ["java", "-jar", "Lavalink.jar"]


