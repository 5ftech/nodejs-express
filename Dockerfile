FROM ubuntu:14.04

RUN mkdir -p /usr/share/
WORKDIR /usr/share/
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN npm install -g express
RUN npm install -g express-generator
RUN express -e express

cp app.js /usr/share/express/




CMD ["node /usr/share/express/bin/www"]
