#!bin/bash
ecs-cli configure --region $AWS_REGION --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECERT_KEY --cluster test-uat
ecs-cli compose up
