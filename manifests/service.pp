# @summary
#   This class handles the homebridge service.
#
# @api private
#
class homebridge::service {
  service { 'homebridge':
    ensure => 'running',
    enable => true,
  }
}
