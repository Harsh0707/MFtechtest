# MFtechtest

IAM users are deployed for each environment usign Terraform Workspaces i.e 

`terraform workspace new "name of env i.e dev,qa,test,prod,uat`

once the workspace is created select the enb the users need to be created.

`terarform workspace select "name of env i.e dev,qa,test,prod,uat"`

IAM users are created globally currently in a sinlge AWS account/

Steps:
- once the env is selected using workspace, run 
terraform init
terraform plan
terraform apply.

The aws cli configuration can be achieved either exporting the access and secret key or by passing IAM arn.

