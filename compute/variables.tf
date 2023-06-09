# --- compute/variables.tf

variable "instance_count" {}
variable "instance_type" {}
variable "vol_size" {}
variable "public_sg" {}
variable "public_subnets" {}
variable "public_key_path" {}
variable "key_name" {}
variable "user_data_path" {}
variable "dbuser" {}
variable "dbpassword" {}
variable "db_name" {}
variable "db_endpoint" {}
variable "lb_target_group_arn" {}
variable "tgport" {}