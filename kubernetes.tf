
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

