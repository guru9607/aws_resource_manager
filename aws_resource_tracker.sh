#!/bin/bash

#####################################################
# Author: Guruprasad
# Date: 3rd-Jan
# Version: v1
# Description: This script will report the AWS resource usage.
#####################################################

# AWS S3
echo "Print list of S3 buckets"
aws s3 ls

# AWS EC2
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId" # Using just the command before pipe will give a JSON with overwhelming amount of info.
# Explanation: The output of 'aws ec2 describe-instances' is parsed using 'jq' to extract the InstanceIds.
# We use square brackets "[]" because it is a list.

# AWS Lambda
echo "Print list of Lambda functions"
aws lambda list-functions

# AWS IAM Users
echo "Print list of IAM users"
aws iam list-users

# set +x 
# It helps print each command and its arguments to the standard output before executing them. This can be useful for debugging scripts or understanding the flow of execution.
