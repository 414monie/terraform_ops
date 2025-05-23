# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "iowanat1" {
  name   = "iowanat1"
  router = google_compute_router.iowarouter1.name
  region = "us-central1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.iowasubnet1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "nat" {
  name         = "iowanat1"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "us-central1"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "tokyonat1" {
  name   = "tokyonat1"
  router = google_compute_router.tokyorouter1.name
  region = "asia-northeast1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.tokyosubnet1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "tokyonat1nat" {
  name         = "tokyonat1"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "asia-northeast1"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "sanpaulonat1" {
  name   = "sanpaulonat1"
  router = google_compute_router.sanpaulorouter1.name
  region = "southamerica-east1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.sanpaulosubnet1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "sanpaulonat1" {
  name         = "sanpaulonat1"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "southamerica-east1"
}

resource "google_compute_router_nat" "belgiumnat1" {
    name = "belgiumnat1"
    router = google_compute_router.belgiumrouter1.name
    region = "europe-west1"

    source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
    nat_ip_allocate_option = "MANUAL_ONLY"

    subnetwork {
      name = google_compute_subnetwork.belgiumsubnet1.id
      source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
    }
    nat_ips = [google_compute_address.nat.self_link]
}

resource "google_compute_address" "belgiumnat1" {
    name = "belgiumnat1"
    address_type = "EXTERNAL"
    network_tier = "PREMIUM"
    region = "europe-west1"
}