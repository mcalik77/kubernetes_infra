resource "aws_autoscaling_attachment" "bastions-kubernetesmcalik-com" {
  elb                    = "${aws_elb.bastion-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-kubernetesmcalik-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2a-masters-kubernetesmcalik-com" {
  elb                    = "${aws_elb.api-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2a-masters-kubernetesmcalik-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2b-masters-kubernetesmcalik-com" {
  elb                    = "${aws_elb.api-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesmcalik-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2c-masters-kubernetesmcalik-com" {
  elb                    = "${aws_elb.api-kubernetesmcalik-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesmcalik-com.id}"
}