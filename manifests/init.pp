# CoA Apache Module
class coa-apache {
  include coa-apache::install
  include coa-apache::config
  include coa-apache::service
}
