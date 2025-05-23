# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "iowasubnet1" {
  name                     = "iowasubnet1"
  ip_cidr_range            = "10.255.10.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.moss-vpc.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "sanpaulosubnet1" {
  name                     = "sanpaulosubnet1"
  ip_cidr_range            = "10.255.40.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.moss-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "belgiumsubnet1" {
  name                     = "belgiumsubnet1"
  ip_cidr_range            = "10.255.90.0/24"
  region                   = "europe-west1"
  network                  = google_compute_network.moss-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyosubnet1" {
  name                     = "tokyosubnet1"
  ip_cidr_range            = "10.255.160.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.moss-vpc.id
  private_ip_google_access = true
}
