


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

