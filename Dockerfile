FROM nginx:stable-alpine

WORKDIR /nginx

RUN chown -R nginx:nginx /nginx
RUN chown -R nginx:nginx /var/cache/nginx
RUN chown -R nginx:nginx /var/run
RUN chown -R nginx:nginx /var/log/nginx

USER nginx

COPY ./data /nginx/data
COPY ./conf /nginx/conf

CMD ["nginx", "-c", "/nginx/conf/nginx.conf"]
