FROM archlinux/base:latest

ARG username
ARG password

MAINTAINER "jhx" <jhx0x00@gmail.com>

ADD squid.sh /sbin/squid.sh

RUN pacman -Syyu --noconfirm && \
    pacman --noconfirm -S squid libxml2 apache sudo && \
    htpasswd -bc /etc/squid/passwd $username $password && \
    chown root:root /sbin/squid.sh && \
    chmod 755 /sbin/squid.sh

ADD squid.conf /etc/squid/

RUN chmod 755 /etc/squid/squid.conf 

EXPOSE 7777

ENTRYPOINT ["/sbin/squid.sh"]
