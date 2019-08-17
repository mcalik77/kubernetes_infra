




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

