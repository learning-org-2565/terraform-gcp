output "logs_bucket_name" {
  description = "Logs bucket name"
  value       = google_storage_bucket.logs.name
}

output "logs_bucket_url" {
  description = "Logs bucket URL"
  value       = google_storage_bucket.logs.url
}

output "assets_bucket_name" {
  description = "Assets bucket name"
  value       = google_storage_bucket.assets.name
}

output "environment" {
  description = "Current environment"
  value       = var.environment
}