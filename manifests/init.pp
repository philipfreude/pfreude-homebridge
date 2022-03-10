# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include homebridge
class homebridge (
  String  $version                = 'latest',
  String  $nodejs_repo_url_suffix = '16.x',
  String  $ui_ensure              = 'installed',
  Boolean $ui_enabled             = true,
) {
  contain homebridge::install
  contain homebridge::config
  contain homebridge::service

  Class['Homebridge::Install']
  -> Class['Homebridge::Config']
  ~> Class['Homebridge::Service']
}
