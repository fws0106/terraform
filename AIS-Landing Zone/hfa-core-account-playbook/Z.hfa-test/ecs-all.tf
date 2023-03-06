# # Create Security Group

# resource "huaweicloud_networking_secgroup" "sg_common" {
#   provider = huaweicloud.general_service
#   name = "sg-common-icmp"

# }
# resource "huaweicloud_networking_secgroup_rule" "sg_rule_general" {
#   provider = huaweicloud.general_service
#   security_group_id = huaweicloud_networking_secgroup.sg_common.id
#   direction         = "ingress"
#   ethertype         = "IPv4"
#   protocol          = "icmp"
#   remote_ip_prefix  = "0.0.0.0/0"
# }

# resource "huaweicloud_networking_secgroup" "sg_security" {
#   provider = huaweicloud.general_service
#   name = "sg-security-icmp"

# }
# resource "huaweicloud_networking_secgroup_rule" "sg_rule_security" {
#   provider = huaweicloud.general_service
#   security_group_id = huaweicloud_networking_secgroup.sg_security.id
#   direction         = "ingress"
#   ethertype         = "IPv4"
#   protocol          = "icmp"
#   remote_ip_prefix  = "0.0.0.0/0"
# }

resource "huaweicloud_networking_secgroup" "sg_transit" {
  provider = huaweicloud.general_service
  name = "sg-transit-icmp"

}
resource "huaweicloud_networking_secgroup_rule" "sg_rule_transit" {
  provider = huaweicloud.general_service
  security_group_id = huaweicloud_networking_secgroup.sg_transit.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = "0.0.0.0/0"
}


### Create ECS

# resource "huaweicloud_compute_instance" "ecs-common" {
#   provider = huaweicloud.general_service
#   name              = "ecs-common"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_common.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.common_private_subnet_id
#     fixed_ip_v4  = "10.16.0.101"
#   }
# }

# resource "huaweicloud_compute_instance" "ecs-security" {
#   provider = huaweicloud.general_service
#   name              = "ecs-security"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_security.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.security_private_subnet_id
#     fixed_ip_v4  = "10.17.0.101"
#   }
# }

# resource "huaweicloud_compute_instance" "ecs-transit-prod-ingress" {
#   provider = huaweicloud.general_service
#   name              = "ecs-transit-prod-ingress"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.transit_prod_ingress_subnet_id
#     fixed_ip_v4  = "10.18.0.101"
#   }
# }

# resource "huaweicloud_compute_instance" "ecs-transit-prod-egress" {
#   provider = huaweicloud.general_service
#   name              = "ecs-transit-prod-egress"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.transit_prod_egress_subnet_id
#     fixed_ip_v4  = "10.19.0.101"
#   }
# }

# # resource "huaweicloud_compute_instance" "ecs-transit-nonprod-ingress" {
# #   provider = huaweicloud.general_service
# #   name              = "ecs-transit-nonprod-ingress"
# #   image_id          = data.huaweicloud_images_image.myimage.id
# #   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
# #   security_group_ids   = [ huaweicloud_networking_secgroup.sg_general.id ]
# #   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
# #   user_data =         base64encode(file("user_data.sh"))

# #   network {
# #     uuid = data.terraform_remote_state.network.outputs.transit_nonprod_ingress_subnet_id
# #     fixed_ip_v4  = "10.20.0.101"
# #   }
# # }

# resource "huaweicloud_compute_instance" "ecs-transit-nonprod-egress" {
#   provider = huaweicloud.general_service
#   name              = "ecs-transit-nonprod-egress"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.transit_nonprod_egress_subnet_id
#     fixed_ip_v4  = "10.21.0.101"
#   }
# }


resource "huaweicloud_compute_instance" "ecs-int-transit-nonprod" {
  provider = huaweicloud.general_service
  name              = "ecs-int-transit-nonprod"
  image_id          = data.huaweicloud_images_image.myimage.id
  flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
  security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  user_data =         base64encode(file("user_data.sh"))

  network {
    uuid = data.terraform_remote_state.network.outputs.int-transit-nonprod-subnet-id
    fixed_ip_v4  = "10.80.8.101"
  }
}

resource "huaweicloud_compute_instance" "ecs-ext-transit-nonprod" {
  provider = huaweicloud.general_service
  name              = "ecs-ext-transit-nonprod"
  image_id          = data.huaweicloud_images_image.myimage.id
  flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
  security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  user_data =         base64encode(file("user_data.sh"))

  network {
    uuid = data.terraform_remote_state.network.outputs.ext-transit-nonprod-subnet-id
    fixed_ip_v4  = "10.80.8.66"
  }
}

resource "huaweicloud_compute_instance" "ecs-egress-nonprod" {
  provider = huaweicloud.general_service
  name              = "ecs-egress-nonprod"
  image_id          = data.huaweicloud_images_image.myimage.id
  flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
  security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  user_data =         base64encode(file("user_data.sh"))

  network {
    uuid = data.terraform_remote_state.network.outputs.egress-nonprod-subnet-id
    fixed_ip_v4  = "10.80.8.2"
  }
}


resource "huaweicloud_compute_instance" "ecs-Ingress-nonprod" {
  provider = huaweicloud.general_service
  name              = "ecs-Ingress-nonprod"
  image_id          = data.huaweicloud_images_image.myimage.id
  flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
  security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  user_data =         base64encode(file("user_data.sh"))

  network {
    uuid = data.terraform_remote_state.network.outputs.Ingress-nonprod-subnet-id
    fixed_ip_v4  = "10.80.8.34"
  }
}