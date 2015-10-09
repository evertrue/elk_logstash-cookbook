name 'elk_logstash'
maintainer 'EverTrue, inc'
maintainer_email 'devops@evertrue.com'
license 'apache2'
description 'Intalls and Configures a Logstash Agent'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.2.1'

supports 'ubuntu', '>= 12.04'

depends 'logstash', '~> 0.12.0'
depends 'apt', '~> 2.0'
depends 'java', '~> 1.0'
depends 'runit', '~> 1.5'
