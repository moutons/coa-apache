# CoA Custom Apache module Service control manifest
class coa-apache::service {
  service { 'httpd':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Class[ ['coa-apache::config'], ['coa-apache::install'] ],
  }
}
