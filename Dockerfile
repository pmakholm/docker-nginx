FROM debian:latest
MAINTAINER Peter Makholm "peter@makholm.net"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update ; \
    apt-get install --no-install-recommends -y php5-fpm php5-cli php5-mysql php5-gd \
                       mariadb-server mariadb-client nginx \
                       cpio less vim ; \
    apt-get install -y systemd- systemd-sysv- sysvinit sysvinit ; \
    rm /sbin/initctl ; ln -s /bin/true /sbin/initctl ; ln -s /bin/true /run/initctl ; \
    rm -Rf /etc/nginx ; \
    apt-get autoremove ; apt-get autoclean

COPY etc/nginx /etc/nginx
COPY bin /usr/local/bin

ENV DEBIAN_FRONTEND=
ENV TERM=xterm

CMD ["/sbin/init"]
