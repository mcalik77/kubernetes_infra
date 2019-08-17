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

