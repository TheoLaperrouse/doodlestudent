FROM node:latest as build-step
WORKDIR app/
COPY package*.json ./
COPY angular.json ./
COPY tsconfig*.json ./
COPY proxy.conf.json ./
RUN npm install && npm install -g @angular/cli
COPY ./src $HOME/app/src

RUN npm run build --prod --outputPath=./dist/tlcfront
FROM bunkerity/bunkerized-nginx:1.2.1 as prod
COPY --from=build-step /app/dist/tlcfront/ /www