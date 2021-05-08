# @summary
#   This class handles the homebridge service.
#
# @api private
#
class homebridge::service {

  service { 'homebridge':
    enable  => true,
    ensure  => 'running',
  }

}
