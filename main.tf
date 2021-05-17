provider "google" {
  project     = "venkatd56-gcpb3"
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = "accounts.json"
}

resource "google_compute_network" "vpc-1" {
 name = "vpc-tf"
 auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  network = google_compute_network.vpc-1.id
  name = "subnet-1a"
  region = "us-central1"
  ip_cidr_range = "10.128.0.0/24"
}