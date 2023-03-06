# output "common_vpc_id" {
#   value       = module.common_service_vpc.vpc_id
#   description = "Common Account VPC ID"
# }

# output "security_vpc_id" {
#   value       = module.security_service_vpc.vpc_id
#   description = "Security Account VPC ID"
# }

# output "transit_prod_ingress_vpc_id" {
#   value       = module.transit_service_prod_ingress_vpc.vpc_id
#   description = "Transit Account Ingress VPC ID"
# }

# output "transit_prod_egress_vpc_id" {
#   value       = module.transit_service_prod_egress_vpc.vpc_id
#   description = "Transit Account Egress VPC ID"
# }

# # output "transit_nonprod_ingress_vpc_id" {
# #   value       = module.transit_service_nonprod_ingress_vpc.vpc_id
# #   description = "Transit Account Ingress VPC ID"
# # }

# output "transit_nonprod_egress_vpc_id" {
#   value       = module.transit_service_nonprod_egress_vpc.vpc_id
#   description = "Transit Account Egress VPC ID"
# }

# output "transit_egress_nat_gw_id" {
#    value = module.transit_service_prod_egress_vpc.egress_nat_gw_id
#    description = "Transit Account Egress NAT GW ID"
# }

# output "transit_egress_nat_gw_eip" {
#    value = module.transit_service_prod_egress_vpc.egress_nat_gw_eip
#    description = "Transit Account Egress NAT GW EIP"
# }

# output "common_requester_vpc_peering_id" {
#   value = module.common_service_vpc_2_transit_nonprod_egress_vpc.requester_vpc_peering_id
#   description = "Common Account Requester VPC Peering id"
# }

# ### add in
# output "common_private_subnet_id" {
#    value       = module.common_service_vpc.private_subnet_id 
#    description = "Common Service Account Private subnet ID"
# }

# output "security_private_subnet_id" {
#    value       = module.security_service_vpc.private_subnet_id 
#    description = "Security Account Private subnet ID"
# }

# output "transit_prod_ingress_subnet_id" {
#    value       = module.transit_service_prod_ingress_vpc.ingress_subnet_id
#    description = "Transit Prod Ingress VPC Private subnet ID"
# }

# output "transit_prod_egress_subnet_id" {
#    value       = module.transit_service_prod_egress_vpc.egress_subnet_id
#    description = "Transit Prod Egress VPC Private subnet ID"
# }

# output "int-transit-nonprod_subnet_id" {
#    value       = module.int-transit-nonprod.ingress_subnet_id
#    description = "Transit Non-Prod Ingress VPC Private subnet ID"
# }

# output "transit_nonprod_egress_subnet_id" {
#    value       = module.transit_service_nonprod_egress_vpc.egress_subnet_id
#    description = "Transit Non-Prod Egress VPC Private subnet ID"
# }

# output "egress-nonprod-vpc-id" {
#   value       = module.common_service_vpc.vpc_id
#   description = "Common Account VPC ID"
# }

output "egress-nonprod-vpc-id" {
  value       = module.egress-nonprod.vpc_id
  description = "Egress VPC ID"
}

output "egress-nonprod-subnet-id" {
   value       = module.egress-nonprod.egress_subnet_id 
   description = "Egress subnet ID"
}

output "Ingress-nonprod-vpc-id" {
  value       = module.Ingress-nonprod.vpc_id
  description = "Ingress VPC ID"
}

output "Ingress-nonprod-subnet-id" {
   value       = module.Ingress-nonprod.ingress_subnet_id 
   description = "Ingress subnet ID"
}

output "ext-transit-nonprod-vpc-id" {
  value       = module.ext-transit-nonprod.vpc_id
  description = "External Transit VPC ID"
}

output "ext-transit-nonprod-subnet-id" {
   value       = module.ext-transit-nonprod.private_subnet_id 
   description = "External Transit subnet ID"
}

output "int-transit-nonprod-vpc-id" {
  value       = module.int-transit-nonprod.vpc_id
  description = "Internal Transit VPC ID"
}

output "int-transit-nonprod-subnet-id" {
   value       = module.int-transit-nonprod.private_subnet_id 
   description = "Internal Transit subnet ID"
}

output "egress-nonprod-nat-gw-id" {
   value = module.egress-nonprod.egress_nat_gw_id
   description = "Egress NAT GW ID"
}
