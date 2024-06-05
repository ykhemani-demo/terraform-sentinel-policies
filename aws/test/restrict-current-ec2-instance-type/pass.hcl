module "tfstate-functions" {
  source = "../../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "general-functions" {
  source = "../../../common-functions/general-functions/general-functions.sentinel"
}

mock "tfstate/v2" {
  module {
    source = "mock-tfstate-pass.sentinel"
  }
}

test {
  rules = {
    main =  true
  }
}
