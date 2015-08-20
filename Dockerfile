FROM nginx:1.9.3
MAINTAINER Milad Fatenejad

COPY files/epvrk.estimatedplacentalvolume.com.crt  /etc/nginx/conf.d/epvrk.estimatedplacentalvolume.com.crt
COPY files/epvrk.estimatedplacentalvolume.com.key  /etc/nginx/conf.d/epvrk.estimatedplacentalvolume.com.key
COPY files/epvrk.estimatedplacentalvolume.com.conf /etc/nginx/conf.d/epvrk.estimatedplacentalvolume.com.conf
COPY files/start-epv-nginx.sh /usr/local/bin/start-epv-nginx.sh

RUN chmod a+x /usr/local/bin/start-epv-nginx.sh && \
    rm -f /etc/nginx/conf.d/default.conf

ENTRYPOINT ["start-epv-nginx.sh"]

