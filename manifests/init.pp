# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @param version
#   Homebridge version to install
# @param nodejs_repo_url_suffix
#   Nodejs repo version to install
# @param ui_ensure
#   Install the ui package
# @param ui_enabled
#   Enable the ui
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
