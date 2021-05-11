provider "aws" {
  version = "~> 2.0"
  region  = var.region
  access_key = var.awsAccessKey
  secret_key = var.awsSecretAccessKey
}

module "api_gateway" { 
    source = "./modules/api-gateway"
    vpc_link_name                             = var.vpc_link_name
    security_group_ids                        = var.security_group_ids
    subnet_ids                                = var.subnet_ids
    tags                                      = var.tags
    api_gw_name                               = var.api_gw_name
    api_gw_protocol                           = var.api_gw_protocol
    api_gw_stage_name                         = var.api_gw_stage_name
    api_gw_stage_auto_deploy                  = var.api_gw_stage_auto_deploy 
    api_gw_authorizer_type                    = var.api_gw_authorizer_type
    api_gw_authorizer_enable_simple_responses = var.api_gw_authorizer_enable_simple_responses
    api_gw_authorizer_payload_format_version  = var.api_gw_authorizer_payload_format_version
    api_gw_authorizer_result_ttl_in_seconds   = var.api_gw_authorizer_result_ttl_in_seconds
    api_gw_authorizer_name                    = var.api_gw_authorizer_name
    api_gw_integration_description            = var.api_gw_integration_description
    api_gw_integration_type                   = var.api_gw_integration_type
    api_gw_integration_method                 = var.api_gw_integration_method
    api_gw_integration_connection_type        = var.api_gw_integration_connection_type
    api_gw_route_key                          = var.api_gw_route_key
}