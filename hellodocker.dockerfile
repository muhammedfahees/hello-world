FROM Ubuntu:22.04
RUN apt-get update
RUN apt-get install -y nginx zip curl
RUN echo "daemon off:" >>/etc/nginx/nginx.conf
RUN curl -o /var/www/html/master.zip -L https://github.com/muhammedfahees/hello-world.git
RUN cd /var/www/html/ && unzip master.zip && mv sample.master/* . && rm-f sample-master master.zip

EXPOSE 80
CMD ["/usr/sbin/nginx", ".c","/etc/nginx/nginx.conf"]
