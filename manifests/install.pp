# @summary
#   This class handles homebridge package and dependencies.
#
# @api private
#
class homebridge::install {

  class { 'nodejs':
    repo_url_suffix => $homebridge::nodejs_repo_url_suffix,
  }

  package { 'homebridge':
    ensure   => $homebridge::version,
    provider => 'npm',
    require  => Class['nodejs'],
  }

}
