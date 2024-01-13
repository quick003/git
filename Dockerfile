FROM centos:7

# Install httpd (web server)
RUN yum -y update && yum -y install httpd

# Download and extract the zip file
RUN yum -y install wget unzip
WORKDIR /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/inance.zip \
    && unzip inance.zip -d /var/www/html/ \
    && rm inance.zip

# Expose port 80
EXPOSE 80

# Start web server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
