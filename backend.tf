terraform {
  backend "s3" {
    bucket = "yemistatefile"
    key    = "red-box"
    region = "eu-west-1"
  }
}
