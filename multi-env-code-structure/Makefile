default:
	rm -rf .terraform
	terraform init -backend-config=env-$(env)/state.tfvars
    terraform $(action) -auto-approve -var-file=env-$(env)/main.tf

dev-apply:
	rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
    terraform apply -auto-approve -var-file=env-dev/main.tf

dev-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
    terraform destroy -auto-approve -var-file=env-dev/main.tf
prod-apply:
	rm -rf .terraform
	terraform init -backend-config=env-prod/state.tfvars
    terraform apply -auto-approve -var-file=env-prod/main.tf

prod-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-prod/state.tfvars
    terraform destroy -auto-approve -var-file=env-prod/main.tf