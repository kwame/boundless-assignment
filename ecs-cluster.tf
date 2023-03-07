resource "aws_ecs_cluster" "boundless-ecs" {
  name = "boundless-ecs"
   
    tags = {
    Terraform = "true"
    Environment = "test"
  }
}

resource "aws_ecs_task_definition" "boundless_task_definition" {
  family                   = "boundless-task"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  requires_compatibilities = ["FARGATE"]
#   task_role_arn            = 
  execution_role_arn       = "arn:aws:iam::387492257775:role/ecsTaskExecutionRole"

  container_definitions = jsonencode([{
    name  = "nodejs-calc"
    image = "387492257775.dkr.ecr.us-west-1.amazonaws.com/nodejs-calc:latest"
    portMappings = [{
      containerPort = 3000
      protocol     = "tcp"
    }]
  }])
}

resource "aws_ecs_service" "boundless_service" {
  name            = "boundless-service"
  cluster         = aws_ecs_cluster.boundless-ecs.id
  task_definition = aws_ecs_task_definition.boundless_task_definition.arn
  launch_type     = "FARGATE"
  desired_count   = 1

  network_configuration {
    assign_public_ip = true
    subnets          = ["subnet-0d12863537fcd27d5"]
    security_groups  = ["sg-0178970f4a4a4cd8f"]
  }
}