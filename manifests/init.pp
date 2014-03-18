# CoA Apache Module
class coa-apache {
  class { '::coa-apache::config': } ->
  class { '::coa-apache::service': } ->
  Class['ssh']
}
