FROM centos

RUN yum install httpd -y 

COPY ./test.html /var/www/html 

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
