
# RESOURCE - COMPUTE INSTANCE
resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.instance_type

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network = var.network_name
    access_config {
    }
  }
}
