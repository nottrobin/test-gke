FROM ubuntu:xenial

RUN apt-get update && apt-get install --yes nginx

# Copy over files
WORKDIR /srv
RUN echo "Hello world!" > index.html
ADD nginx.conf /etc/nginx/sites-enabled/default

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

