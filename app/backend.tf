terraform {
        backend "s3" {
                bucket = "herve-bucket-ajc"
                region = "us-east-1"
                key = "terraform.tfstate"
                shared_credentials_file = "/tmp/credentials"
        }
}
