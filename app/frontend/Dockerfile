FROM nginx:alpine

RUN mkdir -p /var/log/nginx

COPY src/index.html /usr/share/nginx/html/index.html
COPY src/env.js /usr/share/nginx/html/env.js
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 80
CMD ["/start.sh"]
