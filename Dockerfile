FROM node:latest

WORKDIR /

COPY . .

#RUN npm install 

RUN npm install pm2 -g
RUN npm install express

RUN apt-get update

RUN apt-get install -y nano wget dialog net-tools
RUN apt-get install -y nginx  
RUN rm -v /etc/nginx/nginx.conf

ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

RUN sed -i 's/\r$//' $app/start.sh  && \  
       chmod +x $app/start.sh

ENTRYPOINT $app/start.sh

#CMD ./start.sh

#CMD service nginx start
#ENTRYPOINT ["pm2-runtime", "--no-daemon", "start"]
#CMD ["process.json"]

