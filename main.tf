provider "aws" {
  region = "us-east-1"
}

# removed {
#   from = aws_default_vpc.default
# 
#   lifecycle {
#     destroy = false
#   }
# }

import {
  id = "vpc-06bb7522670dea357"
  to = aws_default_vpc.default
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}


