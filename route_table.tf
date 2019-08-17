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