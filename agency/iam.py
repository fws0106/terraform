# coding: utf-8

from huaweicloudsdkcore.auth.credentials import GlobalCredentials
from huaweicloudsdkiam.v3.region.iam_region import IamRegion
from huaweicloudsdkcore.exceptions import exceptions
from huaweicloudsdkiam.v3 import *
from dotenv import load_dotenv
import os

if __name__ == "__main__":

    # import the credentials from environment
    load_dotenv("secret.env")
    ak = os.getenv("ACCESSKEY")
    sk = os.getenv("SECRETKEY")
    domainid = os.getenv("DOMAINID")
    trustdomainid = os.getenv("TRUSTDOMAINID")
    trustdomainname = os.getenv("TRUSTDOMAINNAME")

    credentials = GlobalCredentials(ak, sk) \
    # declare iam client
    iamclient = IamClient.new_builder() \
        .with_credentials(credentials) \
        .with_region(IamRegion.value_of("ap-southeast-3")) \
        .build()

    try:
        cr8agency_req = CreateAgencyRequest()
        agencyoption = CreateAgencyOption(
            name = "agency_admin",
            domain_id = domainid,
            trust_domain_id = trustdomainid,
            trust_domain_name = trustdomainname,
            description = "full of access of all services",
            duration = "FOREVER"   
        )
        cr8agency_req.body = CreateAgencyRequestBody(
            agency = agencyoption
        )
        cr8agency_res = iamclient.create_agency(cr8agency_req).to_dict()
        agency_id = cr8agency_res(['agency']['id'])
        print("Agency ID: " + agency_id)

        # request = AssociateAgencyWithDomainPermissionRequest()
        # request.domain_id = "dc65e387271a4c31a34057797bf39019"
        # request.agency_id = "547d162585ad4eb6b352d030c0756b0a"
        # request.role_id = "2180cfd27e9741d5857dda9adcfa85c1"
        # response = client.associate_agency_with_domain_permission(request)

    except exceptions.ClientRequestException as e:
        print(e.status_code)
        print(e.request_id)
        print(e.error_code)
        print(e.error_msg)