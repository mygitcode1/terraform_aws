# resource "aws_s3_bucket" "flow_logs" {
#   bucket = "clustershop-flowlogs"

#   tags = {
#     Name        = "${var.vpc_name}-flowlogs"
#     Environment = "${var.Env}"
#   }
# }