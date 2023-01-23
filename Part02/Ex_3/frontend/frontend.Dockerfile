FROM node:16-alpine 

EXPOSE 3000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL http://localhost:8080/

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD [ "serve", "-s", "build", "-l", "3000" ]