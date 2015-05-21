default['elk_logstash']['server']['elasticsearch']['host'] = ''
default['elk_logstash']['server']['elasticsearch']['port'] = ''
default['elk_logstash']['server']['elasticsearch']['cluster'] = "#{node.chef_environment}-elk"
default['elk_logstash']['server']['elasticsearch']['embedded'] = false
default['elk_logstash']['server']['elasticsearch']['bind_host'] = ''
default['elk_logstash']['server']['elasticsearch']['index'] = ''
default['elk_logstash']['server']['elasticsearch']['protocol'] = 'http'

default['elk_logstash']['server']['lumberjack']['ssl certificate'] =
  '/etc/logstash/lumberjack.crt.pem'
default['elk_logstash']['server']['lumberjack']['ssl key'] = '/etc/logstash/lumberjack.key.pem'
default['elk_logstash']['server']['lumberjack']['host'] = '0.0.0.0'
default['elk_logstash']['server']['lumberjack']['port'] = '5043'
default['elk_logstash']['server']['lumberjack']['codec'] = 'json'
default['elk_logstash']['server']['lumberjack']['add_field']['x_proccessed_by'] = node['fqdn']
default['elk_logstash']['server']['lumberjack']['add_field']['x_proccessor_chef_env'] =
  node.chef_environment

default['elk_logstash']['server']['file']['path'] = '/var/log/logstash-output.log'
default['elk_logstash']['server']['file']['codec'] = 'rubydebug'
