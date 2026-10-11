variable "cloud_loadbalancer_pools_lookup" {
  description = <<EOT
Map of cloud_loadbalancer_pools_lookup, attributes below
Required:
    - loadbalancer_id
    - service_name
EOT

  type = map(object({
    loadbalancer_id = string
    service_name    = string
  }))
}

