// Generated by insterra

variable "identifier" {}
module "aws_storage_proxima_amw" {
  source  = "upmaru/instellar/aws//modules/storage"
  version = "0.6.3"

  bucket_name = var.identifier
}