# Version: 0.0.1　
FROM docker.io/centos
MAINTAINER Tianyu Zhang "zhangtyps@vip.qq.com"
ENV REFRESH_AT 20190306
RUN yum install epel-release -y && yum install -y nginx
RUN echo 'Hi, I am in your container' >/usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
