# Outputs for openstack_blockstorage_volume_v3
output "volume_id" {
  description = "ID of the created volume"
  value       = openstack_blockstorage_volume_v3.volume.id
}

output "volume_name" {
  description = "Name of the created volume"
  value       = openstack_blockstorage_volume_v3.volume.name
}

output "volume_size" {
  description = "Size of the volume in GB"
  value       = openstack_blockstorage_volume_v3.volume.size
}

output "volume_type" {
  description = "Type of the volume"
  value       = openstack_blockstorage_volume_v3.volume.volume_type
}

# Outputs for openstack_compute_volume_attach_v2
output "attachment_ids" {
  description = "List of IDs of the volume attachments"
  value       = [for idx in range(length(openstack_compute_volume_attach_v2.va)) : openstack_compute_volume_attach_v2.va[idx].id]
}

output "attached_instance_ids" {
  description = "List of IDs of the instances to which the volumes are attached"
  value       = [for idx in range(length(openstack_compute_volume_attach_v2.va)) : openstack_compute_volume_attach_v2.va[idx].instance_id]
}

output "attached_volume_ids" {
  description = "List of IDs of the attached volumes"
  value       = [for idx in range(length(openstack_compute_volume_attach_v2.va)) : openstack_compute_volume_attach_v2.va[idx].volume_id]
}

output "attached_devices" {
  description = "List of device paths for the attached volumes (depends on the hypervisor)"
  value       = [for idx in range(length(openstack_compute_volume_attach_v2.va)) : openstack_compute_volume_attach_v2.va[idx].device]
}

output "multiattach_enabled_list" {
  description = "List indicating if multiattach is enabled for each volume attachment"
  value       = [for idx in range(length(openstack_compute_volume_attach_v2.va)) : openstack_compute_volume_attach_v2.va[idx].multiattach]
}