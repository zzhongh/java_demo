



FROM hub.c.163.com/library/java:8-jre
MAINTAINER abc

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone
ADD ./target/oa-server-0.0.1-SNAPSHOT.jar /app/
ENTRYPOINT ["java", "-Xms2048m", "-Xmx2048m", "-XX:MetaspaceSize=256m", "-XX:MaxMetaspaceSize=256m", "-Duser.timezone=GMT+08",  "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]

