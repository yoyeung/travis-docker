#!bin/bash
sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-darwin-amd64-latest
sudo chmod +x /usr/local/bin/ecs-cli
ecs-cli --version

ecs-cli configure --region $AWS_REGION --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECERT_KEY --cluster test-uat
ecs-cli compose --project-name gfg-pricing-engine up
