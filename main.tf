resource "google_compute_instance" "default" {
  name = "test"
  machine_type = "n1-standard-1"
  zone = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "centos-6-v20181011"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
provider "google" {
  credentials = "${file('terraform-account.json')}"
  project     = "cool-album-220315"
  region      = "us-central1"
}
