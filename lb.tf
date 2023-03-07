# resource "aws_lb" "boundless-alb" {
#   name               = "boundless-alb-lb-tf"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.allow_http.id]
#   subnets            = [for subnet in aws_subnet.public_subnets : subnet.id]

#   enable_deletion_protection = true

#     tags = {
#     Terraform = "true"
#     Environment = "test"
#   }
# }