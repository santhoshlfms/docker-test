FROM node:latest

WORKDIR /

COPY . .

RUN npm install 

RUN npm install pm2 -g
RUN npm install express

ENTRYPOINT ["pm2-runtime", "--no-daemon", "start"]
CMD ["process.json"]

