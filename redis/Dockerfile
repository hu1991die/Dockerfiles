FROM centos:latest

MAINTAINER changming.jiang@qq.com

RUN     yum -y --noplugins --nogpgcheck update && \
	yum -y --noplugins --nogpgcheck install gcc make && \
	yum -y --noplugins --nogpgcheck upgrade && \
	cd /tmp && \
	curl -O http://download.redis.io/redis-stable.tar.gz && \
	tar xvzf redis-stable.tar.gz && \
	cd redis-stable && \
	make && \
	make install && \
	cp -f src/redis-sentinel /usr/local/bin && \
	mkdir -p /opt/redis && \
	yum -y --noplugins --nogpgcheck remove gcc make cpp \
	glibc-devel glibc-headers kernel-headers libgomp libmpc mpfr && \
    yum -y --noplugins --nogpgcheck clean all && \
	rm -rf /var/cache/* /tmp/* /var/lib/yum/*

WORKDIR /opt/redis

CMD ["redis-server", "/opt/redis/redis.conf"]