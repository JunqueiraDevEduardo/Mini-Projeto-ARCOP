FROM registry.fedoraproject.org/fedora:42
LABEL maintainer="arcop_Guilherme.Eduardo"

RUN dnf -y upgrade --refresh && dnf -y install httpd && dnf clean all

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

COPY site-conteudo/index.html /var/www/html/index.html

EXPOSE 80
CMD ["/usr/local/bin/entrypoint.sh"]