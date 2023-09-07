// Generated by insterra

module "aws_compute_proxima_flt" {
  source  = "upmaru/instellar/aws"
  version = "0.6.3"

  cluster_topology = [
    { id = 1, name = "01", size = "t3a.medium" },
    { id = 2, name = "02", size = "t3a.medium" },
  ]

  identifier           = "proxima-flt"
  network_dependencies = module.aws_foundation_proxima_fvb.dependencies
  node_size            = "t3a.medium"
  public_subnet_ids    = module.aws_foundation_proxima_fvb.public_subnet_ids
  ssh_keys             = []
  storage_size         = 40
  volume_type          = "gp3"
  vpc_id               = module.aws_foundation_proxima_fvb.vpc_id
  vpc_ip_range         = module.aws_foundation_proxima_fvb.vpc_ip_range
}
