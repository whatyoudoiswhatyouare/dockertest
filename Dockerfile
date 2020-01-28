FROM ubuntu
RUN apt update
RUN apt install -y nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
COPY default /etc/nginx/sites-available/default
