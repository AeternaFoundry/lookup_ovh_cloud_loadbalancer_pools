data "ovh_cloud_loadbalancer_pools" "cloud_loadbalancer_pools_lookup" {
  for_each = var.cloud_loadbalancer_pools_lookup

  loadbalancer_id = each.value.loadbalancer_id
  service_name    = each.value.service_name
}

