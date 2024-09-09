# terraform-module-minikube

A [`terraform`](https://github.com/hashicorp/terraform) module for [`minikube`](https://github.com/kubernetes/minikube).

## Install

| Name                                                               |
|--------------------------------------------------------------------|
| [minikube](https://github.com/kubernetes/minikube)                 |
| [terraform](https://github.com/hashicorp/terraform)                |
| [tflint](https://github.com/terraform-linters/tflint)              |
| [terraform-docs](https://github.com/terraform-docs/terraform-docs) |
| [pre-commit](https://github.com/pre-commit/pre-commit)             |

## Usage

Configure:
```shell
cat <<EOF > terraform.tfvars
minikube_clusters = {
  "minikube": {
    "driver": "docker",
  }
}
EOF
```

Run:
```shell
terraform init
terraform plan
terraform apply
```

Test:
```shell
terraform test
```

Lint:
```shell
tflint --chdir .
```

Docs:
```shell
terraform-docs markdown --output-file README.terraform.md .
```

Check:
```shell
pre-commit run
```
