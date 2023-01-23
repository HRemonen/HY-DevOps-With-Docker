FROM node:16-alpine 

EXPOSE 5000

WORKDIR /usr/src/app

COPY ./../example-frontend/* .

ENV REACT_APP_BACKEND_URL http://localhost:8080/

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD [ "serve", "-s", "build", "-l", "5000" ]