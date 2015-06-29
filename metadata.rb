name 'elk_logstash'
maintainer 'EverTrue, inc'
maintainer_email 'devops@evertrue.com'
license 'apache2'
description 'Intalls and Configures a Logstash Agent'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.3'

supports 'ubuntu', '>= 12.04'

depends 'logstash', '~> 0.11'
depends 'apt'
depends 'java'
depends 'runit'
