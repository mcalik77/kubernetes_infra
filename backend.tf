terraform {
   backend "s3" {

    bucket = "kubernetesmcalikstate.com"
    key = "terrastate"
    region = "us-west-2"
}
}
