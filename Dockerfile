FROM nginx:stable-alpine

WORKDIR /nginx

RUN chown nginx:nginx /nginx

USER nginx

COPY ./data /nginx/data
COPY ./conf /nginx/conf

RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/cache/nginx /var/run /var/log/nginx

CMD ["nginx", "-c", "/nginx/conf/nginx.conf"]
