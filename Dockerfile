FROM node:8

ARG PROXY_HOST
ARG PROXY_PORT

ENV http_proxy="http://$PROXY_HOST:$PROXY_PORT/"
ENV https_proxy="http://$PROXY_HOST:$PROXY_PORT/"
ENV no_proxy=""

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm config set registry http://registry.npmjs.org/prop-types
RUN npm config set strict_ssl false

COPY . .

RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]
