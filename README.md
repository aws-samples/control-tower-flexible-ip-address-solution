## Flexible IP Address Management Solution for AWS Control Tower

## Solution overview

The AWS CodePipeline workflow configures AWS CodePipeline, AWS CodeBuild projects, and AWS Step Functions to orchestrate AWS CloudFormation management within your organization. A customized configuration package is uploaded to an Amazon Simple Storage Service (Amazon S3) bucket, which triggers this workflow and configures the IPAM solution. An Amazon DynamoDB table is provisioned that stores the IP addresses with flexible CIDR sizes. Then, these are leveraged by AWS Lambda functions for deploying VPCs and their subnets in the spoke accounts. We use AWS Identity and Access Management (IAM) roles and AWS Security Token Service (AWS STS) to set up cross-account access between AWS accounts for the Lambda functions.

![image](https://github.com/aws-samples/control-tower-flexible-ip-address-solution/blob/mokshith/ipam-solution.png)

## Deployment instructions

The deployment of this Flexible IPAM solution consists of four steps:

Step 1: Create a CodeCommit Repository in the Management Account of the Main Organization.

Step 2: Deploy the CodePipeline in the Management Account of the Main Organization

Step 3: Make the necessary changes to the Management Account

Step 4: Provision a spoke account, and enroll to the required OU (e.g., Development OU)

Step 5: Merge with required branch in CodeCommit repository to trigger the Pipeline

Step 6: Validate the VPC creation in the spoke account 


## Authors

Shiva Vaidyanathan - Senior Cloud Infrastructure Architect - vaidys@amazon.com

Mokshith Kumar - Cloud Infrastructure Architect - tumallap@amazon.com

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

