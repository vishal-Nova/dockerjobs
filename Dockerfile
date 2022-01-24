FROM centos:latest
MAINTAINER vishal@gmail.com
RUN yum install -y httpd \
   zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/random.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip random.zip
RUN cp -rvf random/* .
RUN rm -rf random random.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
