FROM nginx:alpine

RUN mkdir -p /var/log/nginx

# Replace default nginx config
COPY nginx.conf /etc/nginx/nginx.conf

COPY src/index.html /usr/share/nginx/html/index.html
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 80
CMD ["/start.sh"]
