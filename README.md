# Terraform Komiser AWS IAM Module

This module creates the AWS IAM policy and user necessary to run [Komiser](https://github.com/mlabouardy/komiser) against an AWS account.

## Compatibility

This module is meant for use with Terraform 0.12. There is presently no Terraform 0.11.x-compatible version.

## Usage

```hcl
module "komiser" {
  source                  = "github.com/BarefootCoders/terraform-aws-komiser-iam"
  version                 = "~> 1.0.0"
  iam_user_secret_pgp_key = "keybase:jrb"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

### Installed Software
- [Terraform](https://www.terraform.io/downloads.html) ~> 0.12
- [Terraform Provider for AWS](https://www.terraform.io/docs/providers/aws/index.html) ~> 2.0

## Author

Written by [Jason Berlinsky](https://www.jasonberlinsky.com/) of [Barefoot Coders](https://www.barefootcoders.com/)

## License

Copyright 2020 Barefoot Coders, LLC.

Licensed under the Apache License, Version 2.0 (the "License");

you may not use this file except in compliance with the License.

You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
