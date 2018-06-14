terraform_lb
=================

Pick and configure a cloud load balancer - either GCP or AWS ELB.

Uses standard Terraform modules downloaded from the Terraform Module Registry:

1. [GCP](https://registry.terraform.io/modules/GoogleCloudPlatform/lb)
2. [AWS](https://registry.terraform.io/modules/terraform-aws-modules/elb)

To use:

1. Log into AWS and make sure required AWS Environment Variables are set.
2. Make sure you've got required GCP Service Account JSON and Environment Variables set:
  ```
  GOOGLE_APPLICATION_CREDENTIALS=/path/to/service/account/gce.json
  GOOGLE_CLOUD_PROJECT=project-name-goes-here
  ```
3. cd into the folder: `terraform init`
4. `terraform plan && terraform apply` - you've created a GCP load balancer.
5. `terraform destroy` - destroy the GCP load balancer.
6. Comment the GCP variables in [lb.tf](lb.tf), uncomment the AWS variables.
7. Change `source = "./modules/lb/gcp"` to `source = "./modules/lb/aws"`
8. `terraform plan && terraform apply` - you've created an AWS load balancer.
9. `terraform destroy` - destroy the AWS load balancer.
