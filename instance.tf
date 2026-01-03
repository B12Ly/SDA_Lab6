resource "google_compute_instance" "terraform" {
  project      = "lab-3-pub-sub-482613"
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-west1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
