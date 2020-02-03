FROM node:12-alpine
WORKDIR /usr/app

# Install app dependencies
COPY package.json yarn.lock ./

RUN yarn

# Bundle app source
COPY . .

EXPOSE 3333
CMD [ "yarn", "build" ]
