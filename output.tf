output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-kubernetesmcalik-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-kubernetesmcalik-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-kubernetesmcalik-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-kubernetesmcalik-com.name}"
}

output "cluster_name" {
  value = "kubernetesmcalik.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetesmcalik-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesmcalik-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesmcalik-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetesmcalik-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetesmcalik-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetesmcalik-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetesmcalik-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetesmcalik-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-west-2a-kubernetesmcalik-com.id}", "${aws_subnet.us-west-2b-kubernetesmcalik-com.id}", "${aws_subnet.us-west-2c-kubernetesmcalik-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetesmcalik-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetesmcalik-com.name}"
}

output "region" {
  value = "us-west-2"
}

output "route_table_private-us-west-2a_id" {
  value = "${aws_route_table.private-us-west-2a-kubernetesmcalik-com.id}"
}

output "route_table_private-us-west-2b_id" {
  value = "${aws_route_table.private-us-west-2b-kubernetesmcalik-com.id}"
}

output "route_table_private-us-west-2c_id" {
  value = "${aws_route_table.private-us-west-2c-kubernetesmcalik-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetesmcalik-com.id}"
}
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