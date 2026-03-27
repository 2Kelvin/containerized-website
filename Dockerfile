FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm ./index.html
COPY index.html styles.css ./
RUN systemctl reload nginx