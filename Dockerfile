FROM centos:latest
MAINTAINER vishal@gmail.com
RUN yum install -y httpd \
   zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/salient.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip salient.zip
RUN cp -rvf salient/* .
RUN rm -rf salient salient.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
