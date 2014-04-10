# CoA Apache configuration module
class coa-apache::config {
  # Master HTTPD conf file
  file { '/etc/httpd/conf/httpd.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/coa-apache/etc_httpd_conf_httpd.conf',
    require => Class['coa-apache::install'],
    notify  => Class['coa-apache::service'],
  }

  # Main Server Configuration elements
  file { '/etc/httpd/conf/etc_httpd_conf_httpd-default.conf':
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/coa-apache/etc_httpd_conf_httpd-default.conf',
    require  => Class['coa-apache::install'],
    notify   => Class['coa-apache::service'],
  }

  # Apache Error Documents Declaration
  file { '/etc/httpd/conf/etc_httpd_conf_httpd-errordoc.conf':
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/coa-apache/etc_httpd_conf_httpd-errordoc.conf',
    require  => Class['coa-apache::install'],
    notify   => Class['coa-apache::service'],
  }

  # Apache Server Info & Status Module Settings
  file { '/etc/httpd/conf/etc_httpd_conf_httpd-info.conf':
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/coa-apache/etc_httpd_conf_httpd-info.conf',
    require  => Class['coa-apache::install'],
    notify   => Class['coa-apache::service'],
  }

  # Apache Prefork/MPM Configuration Section
  file { '/etc/httpd/conf/etc_httpd_conf_httpd-mpm.conf':
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/coa-apache/etc_httpd_conf_httpd-mpm.conf',
    require  => Class['coa-apache::install'],
    notify   => Class['coa-apache::service'],
  }

  # "Placeholder" Vhosts setting
  file { '/etc/httpd/conf/etc_httpd_conf_httpd-vhosts.conf':
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/coa-apache/etc_httpd_conf_httpd-vhosts.conf',
    require  => Class['coa-apache::install'],
    notify   => Class['coa-apache::service'],
  }

  file { '/etc/httpd/conf/etc_httpd_conf_httpd-autoindex.conf':
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/coa-apache/etc_httpd_conf_httpd-autoindex.conf',
    require  => Class['coa-apache::install'],
}
