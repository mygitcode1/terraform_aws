# Provider
variable "region" {}
variable "profile" {}

## VPC
variable "vpc_name" {}
variable "cidr_block" {}
variable "enable_dns_support" {}
variable "enable_dns_hostnames" {}
variable "instance_tenancy" {}
variable "Env" {}
# variable "teashop_cidr_block" {}
# variable "coffeeshop_cidr_block" {}

## Subnets
variable "public1_cidr_block" {}
variable "public2_cidr_block" {}
variable "private1_cidr_block" {}
variable "map_public_ip_on_launch" {}
