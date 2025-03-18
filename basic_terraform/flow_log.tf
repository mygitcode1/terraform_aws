# resource "aws_flow_log" "vpc_flow_log" {
#   log_destination = aws_s3_bucket.flow_logs.arn
#   log_destination_type = "s3"
#   traffic_type    = "ALL"
#   vpc_id          = aws_vpc.clsp.id
# }