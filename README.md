# Terraform Openstack Volume Module

This Terraform module creates and attaches block storage volumes to existing OpenStack instances using the OpenStack Compute (Nova) v2 API. It allows for flexible configuration of volume attachment options, including multiattach support and device tagging. This module is useful for scenarios where additional storage is needed for compute instances.

## Features

- Creates a block storage volume with configurable size and type.
- Attaches the volume to a specified OpenStack instance.
- Supports optional multiattach for attaching the volume to multiple instances.
- Configurable device path, tagging, and vendor-specific options for advanced use cases.

## Usage

The following examples demonstrate how to use the module with required and optional parameters.

### Basic Usage

```hcl
module "volume_attachment" {
  source      = "path/to/terraform-openstack-volumes"
  name        = "example-volume"
  size        = 10
  volume_type = "standard"
  instance_id = openstack_compute_instance_v2.instance.id
}
```

### Advanced Usage with Optional Parameters

```hcl
module "volume_attachment" {
  source        = "./terraform-openstack-volumes"
  name          = "example-volume"
  size          = 10
  volume_type   = "multiattach"
  instance_id   = openstack_compute_instance_v2.instance.id
  device        = "/dev/vdb"
  multiattach   = true
  tag           = "data-volume"
  region        = "RegionOne"
  vendor_options = {
    ignore_volume_confirmation = true
  }
}
```

## Inputs

| Name           | Description                                                | 	Type    | 	Default   | 	Required |
|----------------|------------------------------------------------------------|----------|------------|-----------|
| name           | 	Name of the volume	                                       | string	  | n/a	       | yes       |
| size           | 	Size of the volume in GB			                               | number   | n/a        | yes       |
| volume_type    | 	Type of the volume			                                     | string   | "standard" | no        |
| instance_id    | 	ID of the instance to attach the volume to			             | string   | n/a        | yes       |
| device         | 	Device path for attachment (e.g., /dev/vdc)			            | string   | null       | no        |
| multiattach    | 	Enable multiattach for attaching to multiple instances			 | bool     | false      | no        |
| tag            | 	Tag for the attached device			                            | string   | null       | no        |
| region         | 	Region for the Compute client			                          | string   | null       | no        |
| vendor_options | 	Map of vendor-specific options			                         | map(any) | {}         | no        |

## License

This is an open source project under the [MIT](https://github.com/atlet99/openstack-tf-volume-module/blob/master/LICENSE) license.