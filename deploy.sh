#!/usr/bin/env bash


#Setting up the envirnoment
echo 'Starting deployment...'
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 834826793883.dkr.ecr.us-east-2.amazonaws.com

#Creating and uploading the image
docker build -t 834826793883.dkr.ecr.us-east-2.amazonaws.com/my-node-app:latest .
docker push 834826793883.dkr.ecr.us-east-2.amazonaws.com/my-node-app:latest

#Cleaning up
docker image rm 834826793883.dkr.ecr.us-east-2.amazonaws.com/my-node-app:latest