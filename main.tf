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

data "aws_iam_policy_document" "komiser" {
  statement {
    actions = [
      "ec2:DescribeRegions",
      "ec2:DescribeInstances",
      "ec2:DescribeVolumes",
      "ec2:DescribeVpcs",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeNatGateways",
      "ec2:DescribeRouteTables",
      "ec2:DescribeSnapshots",
      "ec2:DescribeNetworkAcls",
      "ec2:DescribeKeyPairs",
      "ec2:DescribeInternetGateways",
    ]
    resources = ["*"]
  }

  statement {
    actions = [
      "acm:ListCertificates",
      "apigateway:GET",
      "autoscaling:DescribeAutoScalingGroups",
      "ce:GetCostAndUsage",
      "ce:GetCostForecast",
      "cloudfront:ListDistributions",
      "cloudtrail:LookupEvents",
      "cloudwatch:DescribeAlarms",
      "cloudwatch:GetMetricStatistics",
      "datapipeline:ListPipelines",
      "dynamodb:DescribeTable",
      "dynamodb:ListTables",
      "ec2:DescribeAddresses",
      "ec2:DescribeReservedInstances",
      "ec2:DescribeScheduledInstances",
      "ec2:DescribeSnapshots",
      "ec2:DescribeSpotFleetRequests",
      "ec2:DescribeSubnets",
      "ecs:ListClusters",
      "ecs:ListServices",
      "ecs:ListTasks",
      "eks:ListClusters",
      "elasticache:DescribeCacheClusters",
      "elasticloadbalancing:DescribeLoadBalancers",
      "es:ListDomainNames",
      "glue:GetCrawlers",
      "glue:GetJobs",
      "iam:GetUser",
      "iam:ListGroups",
      "iam:ListPolicies",
      "iam:ListRoles",
      "iam:ListUsers",
      "kinesis:ListShards",
      "kinesis:ListStreams",
      "kms:ListKeys",
      "lambda:ListFunctions",
      "logs:DescribeLogGroups",
      "mq:ListBrokers",
      "organizations:DescribeOrganization",
      "rds:DescribeDBInstances",
      "redshift:DescribeClusters",
      "route53:ListHostedZones",
      "route53:ListResourceRecordSets",
      "s3:GetBucketLocation",
      "s3:ListAllMyBuckets",
      "sns:ListTopics",
      "sqs:ListQueues",
      "support:*",
      "swf:ListDomains",
      "tag:GetResources",
    ]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "komiser" {
  name   = var.iam_policy_name
  path   = var.iam_policy_path
  policy = data.aws_iam_policy_document.komiser.json
}

resource "aws_iam_user" "komiser" {
  name = var.iam_user_name
  path = var.iam_user_path
}

resource "aws_iam_user_policy_attachment" "komiser" {
  user       = aws_iam_user.komiser.name
  policy_arn = aws_iam_policy.komiser.arn
}

resource "aws_iam_access_key" "komiser" {
  user    = aws_iam_user.komiser.name
  pgp_key = var.iam_user_secret_pgp_key
}
