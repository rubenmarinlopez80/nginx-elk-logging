FROM nginx:stable-alpine

WORKDIR /nginx

RUN chown -Rf nginx:nginx /nginx/
RUN chown -Rf nginx:nginx /var/cache/nginx/
RUN chown -Rf nginx:nginx /var/run/
RUN chown -Rf nginx:nginx /var/log/nginx/

RUN mkdir /var/cache/nginx/client_temp

RUN chmod -Rf 0777 /var
RUN chmod -Rf 0777 /nginx

USER nginx

COPY ./data /nginx/data
COPY ./conf /nginx/conf

CMD ["nginx", "-c", "/nginx/conf/nginx.conf"]
