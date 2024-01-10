FROM centos:7
#install httpd (web server)
RUN yum -y update
RUN yum -y install httpd
# home page copy from /home/index.html
COPY index.html /var/www/html/
EXPOSE 80
#start web server
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
