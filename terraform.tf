provider "google" {
        credentials = "${file("~/terraform_key.json")}"
        project = "${var.project}"
        region = "${var.zone}"
}
