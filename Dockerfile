FROM centos:latest
LABEL maintainer="vinaypolineni"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY container.png /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

