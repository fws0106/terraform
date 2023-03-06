# module "common_service_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
#   name = "${var.common_service_vpc}"
#   vpc_cidr = var.common_service_vpc_cidr
#   private_subnet_cidr = var.common_private_subnet_cidr
#   database_subnet_cidr = var.common_database_subnet_cidr
#   cce_subnet_cidr = var.common_cce_subnet_cidr

#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

# module "security_service_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
#   name = "${var.security_service_vpc}"
#   vpc_cidr = var.security_service_vpc_cidr
#   private_subnet_cidr = var.security_private_subnet_cidr

#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

module "egress-nonprod" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
  name = "${var.egress-nonprod}"
  vpc_cidr = var.egress-nonprod-vpc-cidr
  egress_subnet_cidr = var.egress-nonprod-subnet-cidr
  egress_nat_gw_name = var.egress-nonprod-nat-gw-name

  providers = {
    huaweicloud = huaweicloud.general_service
  }
}

module "Ingress-nonprod" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
  name = "${var.Ingress-nonprod}"
  vpc_cidr = var.Ingress-nonprod-vpc-cidr
  ingress_subnet_cidr = var.Ingress-nonprod-subnet-cidr

  providers = {
    huaweicloud = huaweicloud.general_service
  }
}

module "ext-transit-nonprod" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
  name = "${var.ext-transit-nonprod}"
  vpc_cidr = var.ext-transit-nonprod-vpc-cidr
  private_subnet_cidr = var.ext-transit-nonprod-subnet-cidr

  providers = {
    huaweicloud = huaweicloud.general_service
  }
}

module "int-transit-nonprod" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
  name = "${var.int-transit-nonprod}"
  vpc_cidr = var.int-transit-nonprod-vpc-cidr
  private_subnet_cidr = var.int-transit-nonprod-subnet-cidr

  providers = {
    huaweicloud = huaweicloud.general_service
  }
}


