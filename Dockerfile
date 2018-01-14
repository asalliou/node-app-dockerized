FROM node:carbon

RUN mkdir /src

RUN npm install -g nodemon

WORKDIR /src
ADD app/package.json /src/package.json
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]