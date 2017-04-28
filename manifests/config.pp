# == Class: shinyserver::config
#
# Manges the configuration file of shiny
#
# === Parameters
#
# @param port       [Integer] Public port shiny is listening on
#
# @site_directory   [String]  Host the directory of Shiny Apps stored in this directory
#
# @log_directory    [String]  Log all Shiny output to files in this directory
#
# @directory_index  [String] When a user visits the base URL rather than a particular application,
#                            an index of the applications available in this directory will be shown.
#
class shinyserver::config (
  Integer $port            = $::shinyserver::port,
  String  $site_directory  = $::shinyserver::site_directory,
  String  $log_directory   = $::shinyserver::log_directory,
  String  $directory_index = $::shinyserver::directory_index
) {
  concat::fragment{ 'general shiny server config':
    target  => '/etc/shiny-server/shiny-server.conf',
    content => template('shinyserver/shiny-server.conf.erb'),
    order   => '01'
  }
}