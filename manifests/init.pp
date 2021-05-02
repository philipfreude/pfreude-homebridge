# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include homebridge
class homebridge (
  String $version                = 'latest',
  String $nodejs_repo_url_suffix = '14.x',
) {
  contain homebridge::install
  contain homebridge::config
  contain homebridge::service

  Class['Homebridge::Install']
  -> Class['Homebridge::Config']
  ~> Class['Homebridge::Service']
}
