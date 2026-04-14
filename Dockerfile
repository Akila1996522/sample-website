FROM redhat/ubi8

LABEL maintainer="Akila Peiris"

RUN yum -y install httpd

COPY index.html /var/www/html/

ADD assets /var/www/html/assets

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
