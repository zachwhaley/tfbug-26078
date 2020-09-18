variable dat {}

data null_data_source this {
  count = contains(keys(var.dat), "remote") ? 1 : 0

  inputs = {
    create_asc = true
  }
}

locals {
  dat = length(data.null_data_source.this) > 0 ? data.null_data_source.this[0].outputs : var.dat.dat
}

output dat {
  value = local.dat
}
