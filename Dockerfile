FROM awsfcj/000062:nginx
COPY . /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf 
CMD ["nginx", "-g", "daemon off;"]
