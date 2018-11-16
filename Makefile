iSHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="
terraform-init:
	@terraform init
python-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/python.tfvars
python-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/python.tfvars
.PHONY = terraform-init python-apply python-destroy
