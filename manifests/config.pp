# CoA Apache configuration module
class coa-apache::config {
  # Master HTTPD conf file
  file { '/etc/httpd/conf/httpd.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/coa-apache/httpd.conf',
    require => Class['coa-apache::install'],
    notify  => Class['coa-apache::service'],
  }
}
