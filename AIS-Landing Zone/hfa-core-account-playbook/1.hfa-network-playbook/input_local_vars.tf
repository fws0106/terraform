# ## for common Service
# variable common_service_vpc { default = "common_service_vpc" }
# variable common_service_vpc_cidr { default = "10.16.0.0/16" }
# variable common_private_subnet_cidr { default = "10.16.0.0/22" }
# variable common_cce_subnet_cidr { default = "10.16.4.0/22" }
# variable common_database_subnet_cidr { default = "10.16.10.0/24" }

# ## for security Service
# variable security_service_vpc { default = "security_service_vpc" }
# variable security_service_vpc_cidr { default = "10.17.0.0/16" }
# variable security_private_subnet_cidr { default = "10.17.0.0/20" }

### for ingress/egress
variable egress-nonprod { default = "egress-nonprod" }
variable egress-nonprod-vpc-cidr { default = "10.80.8.0/27" }
variable egress-nonprod-subnet-cidr { default = "10.80.8.0/27" }
variable egress-nonprod-nat-gw-name  { default = "egress-nonprod-nat-gw" }  

variable Ingress-nonprod { default = "Ingress-nonprod" }
variable Ingress-nonprod-vpc-cidr { default = "10.80.8.32/27" }
variable Ingress-nonprod-subnet-cidr { default = "10.80.8.32/27" }

## for transit service  prod
variable ext-transit-nonprod { default = "ext-transit-nonprod" }
variable ext-transit-nonprod-vpc-cidr { default = "10.80.8.64/27" }
variable ext-transit-nonprod-subnet-cidr { default = "10.80.8.64/27" }    

variable int-transit-nonprod { default = "int-transit-nonprod" }
variable int-transit-nonprod-vpc-cidr { default = "10.80.8.96/27" }
variable int-transit-nonprod-subnet-cidr { default = "10.80.8.96/27" }
