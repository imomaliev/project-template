# Configuring gitlab project

## Set variables

```console
$ cp terraform.tfvars.template terraform.tfvars
```

## Run plan

```console
$ terraform init
$ terraform plan
$ terraform apply
```

## For existing project

```console
$ terraform init
# import project from https://gitlab.com/organization/project
$ terraform import gitlab_project.project organization/project
$ terraform plan
$ terraform apply
```
