# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-pass-multiple-prefixes.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
