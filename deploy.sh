#!bin/bash
set -e

CPATH=$(pwd)

source ./.env

cd $CPATH/codedeploy && zip -r ../data.zip ./* 
cd $CPATH

aws s3 cp data.zip s3://$S3_BUCKET/data.zip

aws deploy create-deployment \
  --application-name $APP_NAME \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name $DEPLOYMENT_GROUP_NAME \
  --description "s3 deployment demo" \
  --s3-location bucket=$S3_BUCKET,bundleType=zip,key=data.zip