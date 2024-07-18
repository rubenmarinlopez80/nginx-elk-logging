FROM nginx:stable-alpine

WORKDIR /nginx

RUN chown -Rf nginx:nginx /nginx/
RUN chown -Rf nginx:nginx /var/cache/nginx/
RUN chown -Rf nginx:nginx /var/run/
RUN chown -Rf nginx:nginx /var/log/nginx/

USER nginx

COPY ./data /nginx/data
COPY ./conf /nginx/conf

RUN chmod -Rf 777 /var

CMD ["nginx", "-c", "/nginx/conf/nginx.conf"]
