FROM java:openjdk-8u111-jdk-alpine
MAINTAINER charles
RUN mkdir -p /rezsystem/rezadmin/ \
    && mkdir -p /var/log/rezg/app \
    && mkdir -p /var/log/rezg/sys \
    && mkdir -p /rezsystem/jboss/jboss1 \
    && mkdir -p /rezsystem/rezadmin/portal_static_data
ADD jboss1.tar.gz /rezsystem/jboss/
COPY java_n1 /usr/lib/jvm/java-1.8-openjdk/bin/java_n1
CMD ["/rezsystem/jboss/jboss1/bin/run.sh","-b","0.0.0.0"]
EXPOSE 8080/tcp
