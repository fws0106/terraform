terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
      version = "1.35.2"
    }
  }
}

provider "huaweicloud" {
  access_key = "UKXCNHEMTICWGDPWBZHL"
  secret_key = "kyk2yCTHVM8KcKu5DDlEsMgyOWkrShFu1LC4jmhR"
  region     = "ap-southeast-3"
}