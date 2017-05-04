# puppet-r-shiny
Puppet module for provisioning shiny server from RStudio

## Usage

```puppet
include ::shinyserver
```

### Managed repository
By default the module is using the upstream repository of RStudio (download3.rstudio.org).
```puppet
class { '::shinyserver':
  manage_repo => true,
}
```

### Not managed repository
In this case the module assumes, that an RPM with the name "shiny-server" is already available in the system repositories.
```puppet
class { '::shinyserver':
  manage_repo => true,
}
```

### Internal R packages
All required internal R packages are installed via the module neilhanlon/r, which is using by default the CRAN repositories. 

## Parameters
  * port: HTTP port shiny is listening on (Default: 3838)
  * site_directory: Root directory of all Shiny apps (Default: /srv/shiny-server)
  * log_directory: Root directory of all logs (/var/log/shiny-server)
  * directory_index: When a user visits the base URL rather than a particular application,  an index of the applications available in this directory will be shown or not. (Default: on)
  * mange_repo: Use official RStudio upstream repository for installation
  * version: Shiny server version, only relevant when mange_repo=true (Current default: 1.5.3.838)
  