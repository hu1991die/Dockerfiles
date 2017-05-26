FROM centos:latest

MAINTAINER changming.jiang@qq.com

ENV JAVA_HOME="/usr/lib/jvm/java"

ENV PATH="$JAVA_HOME/bin:$PATH"

RUN set -e \

    && yum -y --noplugins --nogpgcheck update \

    && yum -y --noplugins --nogpgcheck upgrade \

    && yum -y --noplugins --nogpgcheck install \
        java-1.8.0-openjdk-1.8.0.131 \

    && yum history -y undo last && yum -y clean all \
    && rm -rf /var/cache/* /tmp/* /var/lib/yum/*