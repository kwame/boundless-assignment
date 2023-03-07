# boundless-assignment

This terraform code will deploy the following

1. vpc with 2 public and 2 private subnets
2. Private and public route table
3. One internet gateway 
4. One security group to allow access to port 80 (port 22 was only added for testing purposes)
5. One ECS cluster with Fargate
6. One task definition which will use the 387492257775.dkr.ecr.us-west-1.amazonaws.com/nodejs-calc:latest container 
7. Create an ECS task for the nodejs-calc container
8. Create one service 

To-Do
1. Create the terraform logic to add an ALB for the ECS Service