FROM centos:6
RUN yum -y update
RUN yum -y install php \
                   php-fpm \
&& rm -rf /var/cache/yum \
&& yum clean all

COPY ./www.conf /etc/php-fpm.d/www.conf

EXPOSE 9000

COPY ./docker-entrypoint.sh /usr/local/bin/
RUN chmod u+x /usr/local/bin/docker-entrypoint.sh
CMD ["docker-entrypoint.sh"]
