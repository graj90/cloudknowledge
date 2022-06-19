FROM centos:lestes
MAINTAINER  gururajrathod90@gmail.com
RUN  yum install -y httpd \
zip \
unzip
ADD http://wwww.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /war/www/html
RUN  unzip kindle.zip
RUNC cp -rvp markups-kindle.zip
RUN rm -rvf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
