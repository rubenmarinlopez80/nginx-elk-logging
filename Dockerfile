FROM nginx:stable-alpine

WORKDIR /nginx

RUN chown -R nginx:nginx /nginx /var/cache/nginx /var/run /var/log/nginx

USER nginx

COPY ./data /nginx/data
COPY ./conf /nginx/conf

CMD ["nginx", "-c", "/nginx/conf/nginx.conf"]
