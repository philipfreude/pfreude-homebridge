# @summary
#   This class handles homebridge package and dependencies.
#
# @api private
#
class homebridge::install {
  class { 'nodejs':
    repo_url_suffix       => $homebridge::nodejs_repo_url_suffix,
    nodejs_package_ensure => latest,
  }

  package { 'homebridge':
    ensure   => $homebridge::version,
    provider => 'npm',
    require  => Class['nodejs'],
  }
  package { 'homebridge-config-ui-x':
    ensure   => $homebridge::ui_ensure,
    provider => 'npm',
  }

  file { '/etc/default/homebridge':
    source => 'puppet:///modules/homebridge/homebridge.env',
  }
  file { '/etc/systemd/system/homebridge.service':
    source => 'puppet:///modules/homebridge/homebridge.service',
  }
  file { '/root/.homebridge':
    ensure => 'directory',
    mode   => '0755',
  }
}
