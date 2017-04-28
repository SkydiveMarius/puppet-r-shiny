# == Class: shinyserver::install
#
# Installs the official shiny package and shiny-server RPM
# RPM needs to be already availabe in system yum repositories
#
class shinyserver::install () {
  r::package { 'shiny': }

  package { 'shiny-server':
    ensure => 'installed',
  }
}