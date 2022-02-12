FROM centos:7
MAINTAINER vishal@gmail.com
RUN yum install -y httpd \
   zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/triple-p.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip triple-p.zip
RUN cp -rvf  html-freebie-triple-p-master/* .
RUN rm -rf  html-freebie-triple-p-master triple-p.zip 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
