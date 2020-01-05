/**
 * Copyright 2020 Barefoot Coders, LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "iam_policy_name" {
  description = "The name of the IAM policy to create for Komiser"
  default     = "komiser"
}

variable "iam_policy_path" {
  description = "The path at which to place the Komiser IAM policy"
  default     = "/"
}

variable "iam_user_name" {
  description = "The name of the IAM user to create for Komiser"
  default     = "komiser"
}

variable "iam_user_path" {
  description = "The path at which to place the Komiser IAM user"
  default     = "/"
}

variable "iam_user_secret_pgp_key" {
  description = "The PGP public key (or Keybase username of the form `keybase:username`) with which to encrypt the IAM Secret Access Key"
}
