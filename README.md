# CV Website
This repository contains the code and configuration for deploying a CV website using Terraform and hosting it on AWS. The infrastructure includes AWS services such as Route 53, CloudFront, S3, ACM, and DynamoDB.

Infrastructure Overview
The following AWS services are used to host the CV website:

- **Route 53:** Acts as the hosted zone for the domain and manages the DNS records.
- **CloudFront:** Provides content delivery and caching, with two distributions for the subdomain and root domain.
- **S3 Buckets:** Contains various buckets for different purposes, such as storing logs, remote backend for Terraform state, and hosting the website files.
- **ACM (AWS Certificate Manager):** Manages the SSL certificate for securing the website with HTTPS.
- **DynamoDB:** Utilised for state locking in Terraform, ensuring safe concurrent modifications.

![CV Project Diagram](https://github.com/dmonaghan24/tf-cv/blob/main/Terraform%20CV%20Web.drawio.png)

## Prerequisites
Before proceeding with the deployment, ensure that you have the following:

- An AWS account with appropriate permissions to create the required resources.
- Terraform installed on your local machine.

## Directory Structure
The repository's main directory structure is organised as follows:

- **main.tf:** Contains the main Terraform configuration code.
- **variables.tf:** Defines the input variables used in the Terraform configuration.
- **terraform.tfvars:** Contains the values for the input variables.

I have also broken down each code block and script files as follows:

- **acm.tf**
- **cloudfornt.tf**
- **dynamodb.tf**
- **provider-backend.tf**
- **route53.tf**
- **s3.tf**
- **s3-bucket-policy.json**

# Conclusion
Visit my [CV website](danielmonaghan.co.uk)
