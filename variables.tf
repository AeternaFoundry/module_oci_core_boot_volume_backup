variable "core_boot_volume_backups" {
  description = <<EOT
Map of core_boot_volume_backups, attributes below
Optional:
    - boot_volume_id
    - compartment_id
    - defined_tags
    - display_name
    - freeform_tags
    - is_indefinite_retention_enabled
    - is_prevent_deletion_enabled
    - is_retention_lock_enabled
    - kms_key_id
    - type
    - retention_period (block):
        - retention_time_amount (required)
        - retention_time_unit (required)
    - source_details (block):
        - boot_volume_backup_id (required)
        - kms_key_id (optional)
        - region (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    boot_volume_id                  = optional(string)
    compartment_id                  = optional(string)
    defined_tags                    = optional(map(string))
    display_name                    = optional(string)
    freeform_tags                   = optional(map(string))
    is_indefinite_retention_enabled = optional(bool)
    is_prevent_deletion_enabled     = optional(bool)
    is_retention_lock_enabled       = optional(bool)
    kms_key_id                      = optional(string)
    type                            = optional(string)
    retention_period = optional(object({
      retention_time_amount = number
      retention_time_unit   = string
    }))
    source_details = optional(object({
      boot_volume_backup_id = string
      kms_key_id            = optional(string)
      region                = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

