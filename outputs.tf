output "cloud_asset_project_feeds_id" {
  description = "Map of id values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no id are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_asset_project_feeds_asset_names" {
  description = "Map of asset_names values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no asset_names are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.asset_names if v.asset_names != null && length(v.asset_names) > 0 }
}
output "cloud_asset_project_feeds_asset_types" {
  description = "Map of asset_types values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no asset_types are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.asset_types if v.asset_types != null && length(v.asset_types) > 0 }
}
output "cloud_asset_project_feeds_billing_project" {
  description = "Map of billing_project values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no billing_project are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.billing_project if v.billing_project != null && length(v.billing_project) > 0 }
}
output "cloud_asset_project_feeds_condition" {
  description = "Map of condition values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no condition are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "cloud_asset_project_feeds_content_type" {
  description = "Map of content_type values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no content_type are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "cloud_asset_project_feeds_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_asset_project_feeds_feed_id" {
  description = "Map of feed_id values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no feed_id are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.feed_id if v.feed_id != null && length(v.feed_id) > 0 }
}
output "cloud_asset_project_feeds_feed_output_config" {
  description = "Map of feed_output_config values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no feed_output_config are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => one(v.feed_output_config) if v.feed_output_config != null && length(v.feed_output_config) > 0 }
}
output "cloud_asset_project_feeds_name" {
  description = "Map of name values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no name are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_asset_project_feeds_project" {
  description = "Map of project values across all cloud_asset_project_feeds, keyed the same as var.cloud_asset_project_feeds except keys with no project are omitted"
  value       = { for k, v in google_cloud_asset_project_feed.cloud_asset_project_feeds : k => v.project if v.project != null && length(v.project) > 0 }
}

