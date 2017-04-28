# == Class: neo4j
#
# Installs and configures shiny server from RStudio
# RPM needs to be already avaialble via yum repositories
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
class shinyserver (
  Integer $port            = $::shinyserver::params::port,
  String  $site_directory  = $::shinyserver::params::site_directory,
  String  $log_directory   = $::shinyserver::params::log_directory,
  String  $directory_index = $::shinyserver::params::directory_index
) {
  class{'::shinyserver::install':}

}