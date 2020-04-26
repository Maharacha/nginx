FROM nginx
ARG FINEDR_IP

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx-raw.conf

RUN rm /etc/nginx/conf.d/default.conf || true
COPY nginx.conf /etc/nginx/conf.d
COPY html /usr/share/nginx/html
EXPOSE 80
EXPOSE 443
