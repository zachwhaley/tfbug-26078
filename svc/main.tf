variable dat {}

module dat {
  source = "../dat"

  dat = var.dat
}

locals {
  create_asc = module.dat.dat.create_asc
}

module asc {
  source = "../asc"

  create = local.create_asc
  dat = var.dat
}
