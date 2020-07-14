FROM ubuntu:latest
FROM node:latest

WORKDIR /
COPY ./ ./
RUN npm install

FROM nginx:latest


COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 3030 
EXPOSE 4040

ENTRYPOINT ["pm2", "--no-daemon", "start"]
CMD ["process.json"]

#CMD ["pm2-runtime","process.json"]



