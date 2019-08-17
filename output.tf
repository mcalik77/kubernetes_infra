output "subnet_us-west-2a_id" {
  value = "${aws_subnet.us-west-2a-kubernetesmcalik-com.id}"
}

output "subnet_us-west-2b_id" {
  value = "${aws_subnet.us-west-2b-kubernetesmcalik-com.id}"
}

output "subnet_us-west-2c_id" {
  value = "${aws_subnet.us-west-2c-kubernetesmcalik-com.id}"
}

output "subnet_utility-us-west-2a_id" {
  value = "${aws_subnet.utility-us-west-2a-kubernetesmcalik-com.id}"
}

output "subnet_utility-us-west-2b_id" {
  value = "${aws_subnet.utility-us-west-2b-kubernetesmcalik-com.id}"
}

output "subnet_utility-us-west-2c_id" {
  value = "${aws_subnet.utility-us-west-2c-kubernetesmcalik-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetesmcalik-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetesmcalik-com.id}"
}