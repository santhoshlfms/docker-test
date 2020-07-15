#!/bin/bash

# Start the first process
pm2-runtime start process.json

#start the nginx
service nginx start