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

output "volume_status" {
  description = "Current status of the volume"
  value       = openstack_blockstorage_volume_v3.volume.status
}

output "volume_type" {
  description = "Type of the volume"
  value       = openstack_blockstorage_volume_v3.volume.volume_type
}

output "volume_bootable" {
  description = "Indicates if the volume is bootable"
  value       = openstack_blockstorage_volume_v3.volume.bootable
}

# Outputs for openstack_compute_volume_attach_v2
output "attachment_id" {
  description = "ID of the volume attachment"
  value       = openstack_compute_volume_attach_v2.va.id
}

output "attached_instance_id" {
  description = "ID of the instance to which the volume is attached"
  value       = openstack_compute_volume_attach_v2.va.instance_id
}

output "attached_volume_id" {
  description = "ID of the attached volume"
  value       = openstack_compute_volume_attach_v2.va.volume_id
}

output "attached_device" {
  description = "Device path for the attached volume (depends on the hypervisor)"
  value       = openstack_compute_volume_attach_v2.va.device
}

output "multiattach_enabled" {
  description = "Indicates if multiattach is enabled for the volume"
  value       = openstack_compute_volume_attach_v2.va.multiattach
}
