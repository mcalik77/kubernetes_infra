locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-kubernetesmcalik-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-kubernetesmcalik-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-kubernetesmcalik-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-kubernetesmcalik-com.name}"
  cluster_name                      = "kubernetesmcalik.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetesmcalik-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesmcalik-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesmcalik-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetesmcalik-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetesmcalik-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetesmcalik-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetesmcalik-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetesmcalik-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-west-2a-kubernetesmcalik-com.id}", "${aws_subnet.us-west-2b-kubernetesmcalik-com.id}", "${aws_subnet.us-west-2c-kubernetesmcalik-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetesmcalik-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetesmcalik-com.name}"
  region                            = "us-west-2"
  route_table_private-us-west-2a_id = "${aws_route_table.private-us-west-2a-kubernetesmcalik-com.id}"
  route_table_private-us-west-2b_id = "${aws_route_table.private-us-west-2b-kubernetesmcalik-com.id}"
  route_table_private-us-west-2c_id = "${aws_route_table.private-us-west-2c-kubernetesmcalik-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetesmcalik-com.id}"
  subnet_us-west-2a_id              = "${aws_subnet.us-west-2a-kubernetesmcalik-com.id}"
  subnet_us-west-2b_id              = "${aws_subnet.us-west-2b-kubernetesmcalik-com.id}"
  subnet_us-west-2c_id              = "${aws_subnet.us-west-2c-kubernetesmcalik-com.id}"
  subnet_utility-us-west-2a_id      = "${aws_subnet.utility-us-west-2a-kubernetesmcalik-com.id}"
  subnet_utility-us-west-2b_id      = "${aws_subnet.utility-us-west-2b-kubernetesmcalik-com.id}"
  subnet_utility-us-west-2c_id      = "${aws_subnet.utility-us-west-2c-kubernetesmcalik-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetesmcalik-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetesmcalik-com.id}"
}

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

provider "aws" {
  region = "us-west-2"
}

resource "aws_autoscaling_attachment" "bastions-kubernetesmcalik-com" {
  elb                    = "${aws_elb.bastion-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-kubernetesmcalik-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2a-masters-kubernetesmcalik-com" {
  elb                    = "${aws_elb.api-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2a-masters-kubernetesmcalik-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2b-masters-kubernetesmcalik-com" {
  elb                    = "${aws_elb.api-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesmcalik-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2c-masters-kubernetesmcalik-com" {
  elb                    = "${aws_elb.api-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesmcalik-com.id}"
}

resource "aws_autoscaling_group" "bastions-kubernetesmcalik-com" {
  name                 = "bastions.kubernetesmcalik.com"
  launch_configuration = "${aws_launch_configuration.bastions-kubernetesmcalik-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-us-west-2a-kubernetesmcalik-com.id}", "${aws_subnet.utility-us-west-2b-kubernetesmcalik-com.id}", "${aws_subnet.utility-us-west-2c-kubernetesmcalik-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2a-masters-kubernetesmcalik-com" {
  name                 = "master-us-west-2a.masters.kubernetesmcalik.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2a-masters-kubernetesmcalik-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-kubernetesmcalik-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2a.masters.kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2b-masters-kubernetesmcalik-com" {
  name                 = "master-us-west-2b.masters.kubernetesmcalik.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2b-masters-kubernetesmcalik-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2b-kubernetesmcalik-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2b.masters.kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2c-masters-kubernetesmcalik-com" {
  name                 = "master-us-west-2c.masters.kubernetesmcalik.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2c-masters-kubernetesmcalik-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2c-kubernetesmcalik-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2c.masters.kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-kubernetesmcalik-com" {
  name                 = "nodes.kubernetesmcalik.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetesmcalik-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-kubernetesmcalik-com.id}", "${aws_subnet.us-west-2b-kubernetesmcalik-com.id}", "${aws_subnet.us-west-2c-kubernetesmcalik-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.kubernetesmcalik.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-kubernetesmcalik-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "a.etcd-events.kubernetesmcalik.com"
    "k8s.io/etcd/events"                         = "a/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-kubernetesmcalik-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "a.etcd-main.kubernetesmcalik.com"
    "k8s.io/etcd/main"                           = "a/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-kubernetesmcalik-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "b.etcd-events.kubernetesmcalik.com"
    "k8s.io/etcd/events"                         = "b/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-kubernetesmcalik-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "b.etcd-main.kubernetesmcalik.com"
    "k8s.io/etcd/main"                           = "b/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-kubernetesmcalik-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "c.etcd-events.kubernetesmcalik.com"
    "k8s.io/etcd/events"                         = "c/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-kubernetesmcalik-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "c.etcd-main.kubernetesmcalik.com"
    "k8s.io/etcd/main"                           = "c/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_eip" "us-west-2a-kubernetesmcalik-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2a.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_eip" "us-west-2b-kubernetesmcalik-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2b.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_eip" "us-west-2c-kubernetesmcalik-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2c.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_elb" "api-kubernetesmcalik-com" {
  name = "api-kubernetesmcalik-com-89g6hh"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetesmcalik-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-kubernetesmcalik-com.id}", "${aws_subnet.utility-us-west-2b-kubernetesmcalik-com.id}", "${aws_subnet.utility-us-west-2c-kubernetesmcalik-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "api.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_elb" "bastion-kubernetesmcalik-com" {
  name = "bastion-kubernetesmcalik--e0ab3n"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-kubernetesmcalik-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-kubernetesmcalik-com.id}", "${aws_subnet.utility-us-west-2b-kubernetesmcalik-com.id}", "${aws_subnet.utility-us-west-2c-kubernetesmcalik-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "bastion.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-kubernetesmcalik-com" {
  name = "bastions.kubernetesmcalik.com"
  role = "${aws_iam_role.bastions-kubernetesmcalik-com.name}"
}

resource "aws_iam_instance_profile" "masters-kubernetesmcalik-com" {
  name = "masters.kubernetesmcalik.com"
  role = "${aws_iam_role.masters-kubernetesmcalik-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetesmcalik-com" {
  name = "nodes.kubernetesmcalik.com"
  role = "${aws_iam_role.nodes-kubernetesmcalik-com.name}"
}

resource "aws_iam_role" "bastions-kubernetesmcalik-com" {
  name               = "bastions.kubernetesmcalik.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.kubernetesmcalik.com_policy")}"
}

resource "aws_iam_role" "masters-kubernetesmcalik-com" {
  name               = "masters.kubernetesmcalik.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetesmcalik.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetesmcalik-com" {
  name               = "nodes.kubernetesmcalik.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetesmcalik.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-kubernetesmcalik-com" {
  name   = "bastions.kubernetesmcalik.com"
  role   = "${aws_iam_role.bastions-kubernetesmcalik-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.kubernetesmcalik.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetesmcalik-com" {
  name   = "masters.kubernetesmcalik.com"
  role   = "${aws_iam_role.masters-kubernetesmcalik-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetesmcalik.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetesmcalik-com" {
  name   = "nodes.kubernetesmcalik.com"
  role   = "${aws_iam_role.nodes-kubernetesmcalik-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetesmcalik.com_policy")}"
}

resource "aws_internet_gateway" "kubernetesmcalik-com" {
  vpc_id = "${aws_vpc.kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-kubernetesmcalik-com-4f94efba1a3c41fb128f0045d0d4cf97" {
  key_name   = "kubernetes.kubernetesmcalik.com-4f:94:ef:ba:1a:3c:41:fb:12:8f:00:45:d0:d4:cf:97"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesmcalik.com-4f94efba1a3c41fb128f0045d0d4cf97_public_key")}"
}

resource "aws_launch_configuration" "bastions-kubernetesmcalik-com" {
  name_prefix                 = "bastions.kubernetesmcalik.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesmcalik-com-4f94efba1a3c41fb128f0045d0d4cf97.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-kubernetesmcalik-com.id}"
  security_groups             = ["${aws_security_group.bastion-kubernetesmcalik-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2a-masters-kubernetesmcalik-com" {
  name_prefix                 = "master-us-west-2a.masters.kubernetesmcalik.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesmcalik-com-4f94efba1a3c41fb128f0045d0d4cf97.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesmcalik-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesmcalik-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2a.masters.kubernetesmcalik.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2b-masters-kubernetesmcalik-com" {
  name_prefix                 = "master-us-west-2b.masters.kubernetesmcalik.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesmcalik-com-4f94efba1a3c41fb128f0045d0d4cf97.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesmcalik-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesmcalik-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2b.masters.kubernetesmcalik.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2c-masters-kubernetesmcalik-com" {
  name_prefix                 = "master-us-west-2c.masters.kubernetesmcalik.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesmcalik-com-4f94efba1a3c41fb128f0045d0d4cf97.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesmcalik-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesmcalik-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2c.masters.kubernetesmcalik.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetesmcalik-com" {
  name_prefix                 = "nodes.kubernetesmcalik.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesmcalik-com-4f94efba1a3c41fb128f0045d0d4cf97.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetesmcalik-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetesmcalik-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetesmcalik.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_nat_gateway" "us-west-2a-kubernetesmcalik-com" {
  allocation_id = "${aws_eip.us-west-2a-kubernetesmcalik-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2a-kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2a.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2b-kubernetesmcalik-com" {
  allocation_id = "${aws_eip.us-west-2b-kubernetesmcalik-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2b-kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2b.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2c-kubernetesmcalik-com" {
  allocation_id = "${aws_eip.us-west-2c-kubernetesmcalik-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2c-kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2c.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetesmcalik-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetesmcalik-com.id}"
}

resource "aws_route" "private-us-west-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2a-kubernetesmcalik-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2a-kubernetesmcalik-com.id}"
}

resource "aws_route" "private-us-west-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2b-kubernetesmcalik-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2b-kubernetesmcalik-com.id}"
}

resource "aws_route" "private-us-west-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2c-kubernetesmcalik-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2c-kubernetesmcalik-com.id}"
}

resource "aws_route53_record" "api-kubernetesmcalik-com" {
  name = "api.kubernetesmcalik.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetesmcalik-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetesmcalik-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3TC60Y5HVNDN"
}

resource "aws_route53_record" "bastion-kubernetesmcalik-com" {
  name = "bastion.kubernetesmcalik.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetesmcalik-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetesmcalik-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3TC60Y5HVNDN"
}

resource "aws_route53_zone_association" "Z3TC60Y5HVNDN" {
  zone_id = "/hostedzone/Z3TC60Y5HVNDN"
  vpc_id  = "${aws_vpc.kubernetesmcalik-com.id}"
}

resource "aws_route_table" "kubernetesmcalik-com" {
  vpc_id = "${aws_vpc.kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/kops/role"                    = "public"
  }
}

resource "aws_route_table" "private-us-west-2a-kubernetesmcalik-com" {
  vpc_id = "${aws_vpc.kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "private-us-west-2a.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-us-west-2a"
  }
}

resource "aws_route_table" "private-us-west-2b-kubernetesmcalik-com" {
  vpc_id = "${aws_vpc.kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "private-us-west-2b.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-us-west-2b"
  }
}

resource "aws_route_table" "private-us-west-2c-kubernetesmcalik-com" {
  vpc_id = "${aws_vpc.kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "private-us-west-2c.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-us-west-2c"
  }
}

resource "aws_route_table_association" "private-us-west-2a-kubernetesmcalik-com" {
  subnet_id      = "${aws_subnet.us-west-2a-kubernetesmcalik-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2a-kubernetesmcalik-com.id}"
}

resource "aws_route_table_association" "private-us-west-2b-kubernetesmcalik-com" {
  subnet_id      = "${aws_subnet.us-west-2b-kubernetesmcalik-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2b-kubernetesmcalik-com.id}"
}

resource "aws_route_table_association" "private-us-west-2c-kubernetesmcalik-com" {
  subnet_id      = "${aws_subnet.us-west-2c-kubernetesmcalik-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2c-kubernetesmcalik-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2a-kubernetesmcalik-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2a-kubernetesmcalik-com.id}"
  route_table_id = "${aws_route_table.kubernetesmcalik-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2b-kubernetesmcalik-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2b-kubernetesmcalik-com.id}"
  route_table_id = "${aws_route_table.kubernetesmcalik-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2c-kubernetesmcalik-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2c-kubernetesmcalik-com.id}"
  route_table_id = "${aws_route_table.kubernetesmcalik-com.id}"
}

resource "aws_security_group" "api-elb-kubernetesmcalik-com" {
  name        = "api-elb.kubernetesmcalik.com"
  vpc_id      = "${aws_vpc.kubernetesmcalik-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "api-elb.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-kubernetesmcalik-com" {
  name        = "bastion-elb.kubernetesmcalik.com"
  vpc_id      = "${aws_vpc.kubernetesmcalik-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "bastion-elb.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_security_group" "bastion-kubernetesmcalik-com" {
  name        = "bastion.kubernetesmcalik.com"
  vpc_id      = "${aws_vpc.kubernetesmcalik-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "bastion.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_security_group" "masters-kubernetesmcalik-com" {
  name        = "masters.kubernetesmcalik.com"
  vpc_id      = "${aws_vpc.kubernetesmcalik-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "masters.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_security_group" "nodes-kubernetesmcalik-com" {
  name        = "nodes.kubernetesmcalik.com"
  vpc_id      = "${aws_vpc.kubernetesmcalik-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "nodes.kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-kubernetesmcalik-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-kubernetesmcalik-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesmcalik-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesmcalik-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesmcalik-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesmcalik-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-kubernetesmcalik-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesmcalik-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesmcalik-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-kubernetesmcalik-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-kubernetesmcalik-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesmcalik-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-west-2a-kubernetesmcalik-com" {
  vpc_id            = "${aws_vpc.kubernetesmcalik-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2a.kubernetesmcalik.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "us-west-2b-kubernetesmcalik-com" {
  vpc_id            = "${aws_vpc.kubernetesmcalik-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2b.kubernetesmcalik.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "us-west-2c-kubernetesmcalik-com" {
  vpc_id            = "${aws_vpc.kubernetesmcalik-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "us-west-2c.kubernetesmcalik.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "utility-us-west-2a-kubernetesmcalik-com" {
  vpc_id            = "${aws_vpc.kubernetesmcalik-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "utility-us-west-2a.kubernetesmcalik.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_subnet" "utility-us-west-2b-kubernetesmcalik-com" {
  vpc_id            = "${aws_vpc.kubernetesmcalik-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "utility-us-west-2b.kubernetesmcalik.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_subnet" "utility-us-west-2c-kubernetesmcalik-com" {
  vpc_id            = "${aws_vpc.kubernetesmcalik-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "utility-us-west-2c.kubernetesmcalik.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_vpc" "kubernetesmcalik-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetesmcalik-com" {
  domain_name         = "us-west-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetesmcalik-com" {
  vpc_id          = "${aws_vpc.kubernetesmcalik-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetesmcalik-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
