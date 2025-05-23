# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowarouter1" {
  name    = "iowarouter1"
  region  = "us-central1"
  network = google_compute_network.moss-vpc.id
}

resource "google_compute_router" "tokyorouter1" {
  name    = "tokyorouter1"
  region  = "asia-northeast1"
  network = google_compute_network.moss-vpc.id
}

resource "google_compute_router" "sanpaulorouter1" {
  name    = "sanpaulorouter1"
  region  = "southamerica-east1"
  network = google_compute_network.moss-vpc.id
}

resource "google_compute_router" "belgiumrouter1" {
  name    = "belgiumrouter1"
  region  = "europe-west1"
  network = google_compute_network.moss-vpc.id
}