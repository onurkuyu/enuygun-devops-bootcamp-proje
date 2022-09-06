 provider "google" {
    project = "devops-v5"
    region = "us-central1"
 }
 terraform {
   backend "gcs" {
    bucket = "onur-tf-state"
    prefix = "terraform/state"
   }
   required_providers {
     google = {
        source = "hashicorp/google"
        version = "~>4.0"
     }
   }
 }