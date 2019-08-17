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