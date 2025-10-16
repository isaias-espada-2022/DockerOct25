FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY index.html .

COPY Archivo.zip .

RUN apk add --no-cache unzip && \
    unzip Archivo.zip -d . && \
    rm Archivo.zip && \
    chmod -R 755 /usr/share/nginx/html

EXPOSE 80
