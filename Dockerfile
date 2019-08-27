FROM centos

MAINTAINER "herve mory mory@ch.ibm.com"

LABEL "Test podman Dockerfile" 

RUN yum install httpd -y

COPY ./index.html /var/www/html

#USER apache

EXPOSE 80 

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
