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
