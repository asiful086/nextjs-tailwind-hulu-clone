FROM node:14

RUN mkdir /hulu

WORKDIR  /hulu

COPY ./package.json /hulu

RUN npm install

COPY . /hulu

RUN npm run build

CMD ["npm","start"]