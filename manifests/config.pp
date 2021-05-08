# @summary
#   This class handles the configuration file.
#
# @api private
#
class homebridge::config {

  file { '/root/.homebridge/config.json':
    ensure  => 'present',
    content => template('homebridge/config.json.erb'),
    replace => true,
  }

}
