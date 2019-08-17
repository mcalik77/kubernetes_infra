resource "aws_route53_record" "api-kubernetesmcalik-com" {
  name = "api.kubernetesmcalik.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetesmcalik-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetesmcalik-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3TC60Y5HVNDN"
}

resource "aws_route53_record" "bastion-kubernetesmcalik-com" {
  name = "bastion.kubernetesmcalik.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetesmcalik-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetesmcalik-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3TC60Y5HVNDN"
}

resource "aws_route53_zone_association" "Z3TC60Y5HVNDN" {
  zone_id = "/hostedzone/Z3TC60Y5HVNDN"
  vpc_id  = "${aws_vpc.kubernetesmcalik-com.id}"
}