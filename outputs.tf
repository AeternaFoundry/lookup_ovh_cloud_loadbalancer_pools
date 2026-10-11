output "cloud_loadbalancer_pools_lookup_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all cloud_loadbalancer_pools_lookup, keyed the same as var.cloud_loadbalancer_pools_lookup except keys with no loadbalancer_id are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_pools.cloud_loadbalancer_pools_lookup : k => v.loadbalancer_id if v.loadbalancer_id != null && length(v.loadbalancer_id) > 0 }
}
output "cloud_loadbalancer_pools_lookup_pools" {
  description = "Map of pools values across all cloud_loadbalancer_pools_lookup, keyed the same as var.cloud_loadbalancer_pools_lookup except keys with no pools are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_pools.cloud_loadbalancer_pools_lookup : k => v.pools if v.pools != null && length(v.pools) > 0 }
}
output "cloud_loadbalancer_pools_lookup_service_name" {
  description = "Map of service_name values across all cloud_loadbalancer_pools_lookup, keyed the same as var.cloud_loadbalancer_pools_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_pools.cloud_loadbalancer_pools_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

