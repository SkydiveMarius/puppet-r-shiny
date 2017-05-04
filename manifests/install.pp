# == Class: shinyserver::install
#
# Installs the official shiny package and shiny-server RPM
# RPM needs to be already availabe in system yum repositories
#
class shinyserver::install (
  $manage_repo = $::shinyserver::mange_repo,
  $version     = $::shinyserver::version
) {
  r::package { 'shiny': }

  if ($manage_repo) {
    package { 'shiny-server':
      provider => 'rpm',
      ensure => installed,
      source => "https://download3.rstudio.org/centos5.9/x86_64/shiny-server-${version}-rh5-x86_64.rpm"
    }
  } else {
    package { 'shiny-server':
      ensure => 'installed',
    }
  }
}