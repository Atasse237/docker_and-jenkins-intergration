FROM centos:7
RUN yum -y update && yum clean all
RUN yum -y install httpd 
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]
