module "lb" {
  source = "./modules/lb/gcp"

  name = "test-load-balancer"

  # GCP
  service_port = "80"
  target_tags  = ["new-lb"]

  // # AWS
  // # Configure the LB.
  // internal = false
  // listener = [
  //   {
  //     instance_port     = "80"
  //     instance_protocol = "HTTP"
  //     lb_port           = "80"
  //     lb_protocol       = "HTTP"
  //   },
  // ]
  // health_check = [
  //   {
  //     target              = "HTTP:80/"
  //     interval            = 30
  //     healthy_threshold   = 2
  //     unhealthy_threshold = 2
  //     timeout             = 5
  //   },
  // ]
  // security_groups = ["${data.aws_security_group.default.id}"]
  // subnets         = ["${data.aws_subnet_ids.all.ids}"]
}
