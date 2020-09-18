variable create_asc {
  type = bool
}

module org {
  source = "./org"

  create_asc = var.create_asc
}

module svc {
  source = "./svc"

  dat = { dat = module.org }
}
