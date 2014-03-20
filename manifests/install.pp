# Class to install Apache
class coa-apache::install {
  package { 'httpd':
    ensure => present,
  }
}
