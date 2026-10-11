variable "cloud_asset_project_feeds" {
  description = <<EOT
Map of cloud_asset_project_feeds, attributes below
Required:
    - feed_id
    - feed_output_config (block):
        - pubsub_destination (required, block):
            - topic (required)
Optional:
    - asset_names
    - asset_types
    - billing_project
    - content_type
    - deletion_policy
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - location (optional)
        - title (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    feed_id         = string
    asset_names     = optional(list(string))
    asset_types     = optional(list(string))
    billing_project = optional(string)
    content_type    = optional(string)
    deletion_policy = optional(string)
    project         = optional(string)
    feed_output_config = object({
      pubsub_destination = object({
        topic = string
      })
    })
    condition = optional(object({
      description = optional(string)
      expression  = string
      location    = optional(string)
      title       = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

