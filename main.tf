# Logs bucket
resource "google_storage_bucket" "logs" {
  name          = "${var.project_id}-${var.environment}-logs"
  location      = "US"
  force_destroy = var.environment != "prod"
  
  versioning {
    enabled = true
  }
  
  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
  
  labels = merge(
    var.labels,
    {
      purpose     = "logs"
      environment = var.environment
    }
  )
}

# Assets bucket
resource "google_storage_bucket" "assets" {
  name          = "${var.project_id}-${var.environment}-assets"
  location      = "US"
  storage_class = "NEARLINE"
  force_destroy = var.environment != "prod"
  
  labels = merge(
    var.labels,
    {
      purpose     = "assets"
      environment = var.environment
    }
  )
}