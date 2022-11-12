FROM archlinux:base

ARG username
ARG password

LABEL maintainer="jhx <jhx0x00@gmail.com>"

ADD squid.sh /sbin/squid.sh

RUN pacman -Syyu --noconfirm && \
    pacman -S --noconfirm squid libxml2 apache sudo && \
    htpasswd -bcm /etc/squid/passwd $username $password && \
    chown root:root /sbin/squid.sh && \
    chmod 755 /sbin/squid.sh

ADD squid.conf /etc/squid/

RUN chmod 755 /etc/squid/squid.conf 

EXPOSE 7777

ENTRYPOINT ["/sbin/squid.sh"]
