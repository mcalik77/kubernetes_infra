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