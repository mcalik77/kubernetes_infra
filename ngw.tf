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