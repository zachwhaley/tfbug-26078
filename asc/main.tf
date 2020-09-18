variable create {}
variable dat {}

module dat {
  source = "../dat"

  dat = var.dat
}

locals {
  a = module.dat.dat.create_asc
}

resource null_resource this {
  count = var.create ? 1 : 0

  triggers = {
    a = local.a
  }
}
