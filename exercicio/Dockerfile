FROM centos
RUN yum update
RUN yum install puppet wget git vim httpd nginx -y
CMD service nginx start
COPY index.html /usr/share/nginx/html/
