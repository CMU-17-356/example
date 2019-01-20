FROM node:8-alpine
MAINTAINER CMU-17-356

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

# Change working directory
WORKDIR /usr/src/app

# Copy for install
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

EXPOSE 80
CMD [ "npm", "start" ]
