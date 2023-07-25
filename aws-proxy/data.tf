# Copyright 2023 Cloudera, Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


data "aws_ami" "proxy_default" {

  most_recent = true

  filter {
    name   = "name"
    # values = ["amzn2-ami-hvm-*-x86_64-ebs"]
# values = ["amzn-ami-hvm-*-x86_64-gp2"]
values = ["al2023-ami-2023*-x86_64"]
  }

  owners = ["amazon"]
}
