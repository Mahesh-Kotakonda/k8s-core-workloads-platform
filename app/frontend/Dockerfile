FROM nginx:alpine

COPY src/index.html /usr/share/nginx/html/index.html
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]
