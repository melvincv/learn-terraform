# Terraform basics

## Basic commands

`terraform init` - do at the beginning or **after adding a new provider** \
`terraform plan` - dry run \
`terraform apply` - create the resources \
`terraform destroy` - **brings down the whole infra** \
`terraform refresh` - updates the tfstate file with the observed (current) state

## terraform destroy

`terraform destroy -target <resource-type>.<local-resource-name>` \
Eg: `terraform destroy -target aws_instance.myec2`

Comment out what you do not need.
In this case, comment out the targeted resource.

```
/*
comment
*/
```

## Section Notes

[Google Docs](https://docs.google.com/document/d/179clqsxOGQa-iGKu1dcmz89Vpso9-7Of8opIkXwPr_k/edit?usp=sharing)