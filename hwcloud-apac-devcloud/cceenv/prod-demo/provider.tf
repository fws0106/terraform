terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
      version = "1.35.2"
    }
  }
}

provider "huaweicloud" {
  access_key = "GAFTV6GETORXJK7DQL6L"
  secret_key = "eaOizoaRjzs6coa9EVCCzF4I6eTeqiO88qCPwRT9"
  region     = "ap-southeast-3"
}