name             'consul-template'
maintainer       'Adam Krone'
maintainer_email 'krone.adam@gmail.com'
license          'Apache-2.0'
description      'Installs/Configures consul-template'
long_description 'Installs/Configures consul-template'
version          '0.13.3'

recipe 'consul-template', 'Installs, configures, and starts the consul-template service.'
recipe 'consul-template::install_binary', 'Installs consul-template from binary.'
recipe 'consul-template::install_source', 'Installs consul-template from source.'
recipe 'consul-template::service', 'Configures and starts the consul-template service.'

supports 'ubuntu', '>= 16.04'

depends 'libarchive'
depends 'golang'
depends 'runit'
depends 'nssm'

chef_version '>= 12.1' if respond_to?(:chef_version)
