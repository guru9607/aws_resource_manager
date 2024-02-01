# AWS_resource_manager

Why someone move to cloud?
1) To reduce management overhead
2) To reduce cost

How to reduce cost?
- Suppose we have 100 developers working. If they created ec2 instance and not using it, it will waste our resources. As a Devops engineer we must maintain the cost effectiveness, because it is primary reason company moved to cloud.

Scenario:- 
- Suppose their is the organisation using resources such as EC2, S3, Lamda, IAM (Identity and Access Management)
- We have to report the resource usage to a manager, ideally people supply this info to a reporting dashboard.

- Put all the informatin into a file everyday at 6pm, but for this everyday we have to run it
> Therefore, We make use of **CronJob** in Linux.

## Prerequisites
AWS CLI need to be installed.
```
$ aws configure
```
It will ask you for Accesskey and secret access provide it with the same.
