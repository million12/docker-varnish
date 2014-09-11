FROM polinux/centos7:latest

MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>
RUN yum update -y && \
yum install -y --nogpgcheck varnish && \
yum clean all

ENV BACKEND_PORT 8080
ENV BACKEND_IP 127.0.0.1
ENV PORT 80

ADD start.sh /bin/start.sh

CMD /bin/start.sh
EXPOSE 80