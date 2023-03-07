# boundless-assignment

At this time the application can be reached on 
[http://54.176.187.245:3000/](http://54.176.187.245:3000/)

This terraform code will deploy the following

- vpc with 2 public and 2 private subnets
- Private and public route table
- One internet gateway 
- One security group to allow access to port 80 (port 22 was only added for testing purposes)
- One ECS cluster with Fargate
- One task definition which will use the 387492257775.dkr.ecr.us-west-1.amazonaws.com/nodejs-calc:latest container 
- There are currently 2 versions for the nodejs-calc image, v0.2 and latest
- Create an ECS task for the nodejs-calc container
- Create one service 

To-Do
- [ ] Create the terraform logic to add an ALB for the ECS Service
- [ ] Add SSL certificate to ALB