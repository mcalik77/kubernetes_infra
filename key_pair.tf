resource "aws_key_pair" "kubernetes-kubernetesmcalik-com-4f94efba1a3c41fb128f0045d0d4cf97" {
  key_name   = "kubernetes.kubernetesmcalik.com-4f:94:ef:ba:1a:3c:41:fb:12:8f:00:45:d0:d4:cf:97"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesmcalik.com-4f94efba1a3c41fb128f0045d0d4cf97_public_key")}"
}