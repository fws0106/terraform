module "ingress_vpc_2_int_transit_vpc" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"

  requester_vpc_name = var.Ingress-nonprod
  requester_vpc_id = module.Ingress-nonprod.vpc_id
  requester_vpc_cidr = var.Ingress-nonprod-vpc-cidr

  accepter_vpc_name = var.int-transit-nonprod
  accepter_vpc_id = module.int-transit-nonprod.vpc_id
  accepter_vpc_cidr = var.int-transit-nonprod-vpc-cidr

  providers = {
    huaweicloud = huaweicloud.general_service
  }
}

module "egress_vpc_2_int_transit_vpc" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"

  requester_vpc_name = var.egress-nonprod
  requester_vpc_id = module.egress-nonprod.vpc_id
  requester_vpc_cidr = var.egress-nonprod-vpc-cidr

  accepter_vpc_name = var.int-transit-nonprod
  accepter_vpc_id = module.int-transit-nonprod.vpc_id
  accepter_vpc_cidr = var.int-transit-nonprod-vpc-cidr

  providers = {
    huaweicloud = huaweicloud.general_service
  }
}

module "ext_transit_vpc_2_int_transit_vpc" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"

  requester_vpc_name = var.ext-transit-nonprod
  requester_vpc_id = module.ext-transit-nonprod.vpc_id
  requester_vpc_cidr = var.ext-transit-nonprod-vpc-cidr

  accepter_vpc_name = var.int-transit-nonprod
  accepter_vpc_id = module.int-transit-nonprod.vpc_id
  accepter_vpc_cidr = var.int-transit-nonprod-vpc-cidr

  providers = {
    huaweicloud = huaweicloud.general_service
  }
}



# module "common_service_vpc_2_transit_prod_egress_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"

#   requester_vpc_name = var.common_service_vpc
#   requester_vpc_id = module.common_service_vpc.vpc_id
#   requester_vpc_cidr = var.common_service_vpc_cidr

#   accepter_vpc_name = var.transit_service_prod_egress_vpc
#   accepter_vpc_id = module.transit_service_prod_egress_vpc.vpc_id
#   accepter_vpc_cidr = var.transit_prod_egress_vpc_cidr

#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

# module "common_service_vpc_2_transit_nonprod_ingress_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"
  
#   requester_vpc_name = var.common_service_vpc
#   requester_vpc_id = module.common_service_vpc.vpc_id
#   requester_vpc_cidr = var.common_service_vpc_cidr

#   accepter_vpc_name = var.transit_service_nonprod_ingress_vpc
#   accepter_vpc_id = module.transit_service_nonprod_ingress_vpc.vpc_id
#   accepter_vpc_cidr = var.transit_nonprod_ingress_vpc_cidr

#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

# module "common_service_vpc_2_transit_nonprod_egress_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"
  
#   requester_vpc_name = var.common_service_vpc
#   requester_vpc_id = module.common_service_vpc.vpc_id
#   requester_vpc_cidr = var.common_service_vpc_cidr

#   accepter_vpc_name = var.transit_service_nonprod_egress_vpc
#   accepter_vpc_id = module.transit_service_nonprod_egress_vpc.vpc_id
#   accepter_vpc_cidr = var.transit_nonprod_egress_vpc_cidr
  
#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

# module "security_service_vpc_2_transit_prod_ingress_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"
  
#   requester_vpc_name = var.security_service_vpc
#   requester_vpc_id = module.security_service_vpc.vpc_id
#   requester_vpc_cidr = var.security_service_vpc_cidr

#   accepter_vpc_name = var.transit_service_prod_ingress_vpc
#   accepter_vpc_id = module.transit_service_prod_ingress_vpc.vpc_id
#   accepter_vpc_cidr = var.transit_prod_ingress_vpc_cidr
  
#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

# module "security_service_vpc_2_transit_prod_egress_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"

#   requester_vpc_name = var.security_service_vpc
#   requester_vpc_id = module.security_service_vpc.vpc_id
#   requester_vpc_cidr = var.security_service_vpc_cidr

#   accepter_vpc_name = var.transit_service_prod_egress_vpc
#   accepter_vpc_id = module.transit_service_prod_egress_vpc.vpc_id
#   accepter_vpc_cidr = var.transit_prod_egress_vpc_cidr
  
#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

# module "security_service_vpc_2_transit_nonprod_ingress_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"

#   requester_vpc_name = var.security_service_vpc
#   requester_vpc_id = module.security_service_vpc.vpc_id
#   requester_vpc_cidr = var.security_service_vpc_cidr

#   accepter_vpc_name = var.transit_service_nonprod_ingress_vpc
#   accepter_vpc_id = module.transit_service_nonprod_ingress_vpc.vpc_id
#   accepter_vpc_cidr = var.transit_nonprod_ingress_vpc_cidr
  
#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }

# module "security_service_vpc_2_transit_nonprod_egress_vpc" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-vpcpeering-single-account"

#   requester_vpc_name = var.security_service_vpc
#   requester_vpc_id = module.security_service_vpc.vpc_id
#   requester_vpc_cidr = var.security_service_vpc_cidr

#   accepter_vpc_name = var.transit_service_nonprod_egress_vpc
#   accepter_vpc_id = module.transit_service_nonprod_egress_vpc.vpc_id
#   accepter_vpc_cidr = var.transit_nonprod_egress_vpc_cidr
  
#   providers = {
#     huaweicloud = huaweicloud.general_service
#   }
# }