## Flexible IP Address Management Solution for AWS Control Tower

## Solution overview

The AWS CodePipeline workflow configures AWS CodePipeline, AWS CodeBuild projects, and AWS Step Functions to orchestrate AWS CloudFormation management within your organization. A customized configuration package is uploaded to an Amazon Simple Storage Service (Amazon S3) bucket, which triggers this workflow and configures the IPAM solution. An Amazon DynamoDB table is provisioned that stores the IP addresses with flexible CIDR sizes. Then, these are leveraged by AWS Lambda functions for deploying VPCs and their subnets in the spoke accounts. We use AWS Identity and Access Management (IAM) roles and AWS Security Token Service (AWS STS) to set up cross-account access between AWS accounts for the Lambda functions.

![image](https://github.com/aws-samples/control-tower-flexible-ip-address-solution/blob/main/ipam-solution.png)

## Deployment instructions

The deployment of this Flexible IPAM solution consists of four steps:

Step 1 - Upload the .zip files to Amazon S3 bucket in the Networking Hub Account.

Step 2 - Make the necessary changes to the Management Account.

Step 3 - Provision a spoke account, and enroll to the required OU (e.g., Development OU).

Step 4 - Validate the VPC creation in the spoke account.

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

