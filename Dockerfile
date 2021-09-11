FROM hub.c.163.com/library/java:8-jre
MAINTAINER abc

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone
ADD ./target/simbot-mirai-springboot-1.0.0.jar /app/
ENTRYPOINT ["java", "-Duser.timezone=GMT+08","-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]
