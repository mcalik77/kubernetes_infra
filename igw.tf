resource "aws_internet_gateway" "kubernetesmcalik-com" {
  vpc_id = "${aws_vpc.kubernetesmcalik-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesmcalik.com"
    Name                                         = "kubernetesmcalik.com"
    "kubernetes.io/cluster/kubernetesmcalik.com" = "owned"
  }
}