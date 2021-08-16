FROM openjdk:8-alpine

# 参考 https://github.com/chanjarster/dockerfile-examples

ARG NAME
ARG VERSION
ARG JAR_FILE
ARG TIMEZONE

LABEL name=$NAME \
      version=$VERSION

# 设定时区
ENV TZ=${TIMEZONE}
RUN set -eux; \
    apk add --no-cache tzdata; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone

# 新建用户java-app
RUN set -eux; \
    addgroup --gid 1000 java-app; \
    adduser -S -u 1000 -g java-app -h /home/java-app/ -s /bin/sh -D java-app; \
    mkdir -p /home/java-app/lib /home/java-app/etc /home/java-app/jmx-ssl /home/java-app/logs /home/java-app/tmp /home/java-app/jmx-exporter/lib /home/java-app/jmx-exporter/etc; \
    chown -R java-app:java-app /home/java-app

# 导入启动脚本
COPY --chown=java-app:java-app docker-entrypoint.sh /home/java-app/docker-entrypoint.sh

# 导入JAR(可选)
COPY --chown=java-app:java-app ${JAR_FILE} /home/java-app/lib/app.jar

USER java-app

ENTRYPOINT ["/home/java-app/docker-entrypoint.sh"]

EXPOSE 8080
