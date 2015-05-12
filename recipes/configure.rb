logstash_config 'lumberjack input' do
  templates_cookbook 'elk_logstash'
  templates 'input_lumberjack' => 'input_lumberjack.conf.erb'
  instance 'server'
  variables node['elk_logstash']['server']
end

logstash_config 'elasticsearch output' do
  templates_cookbook 'elk_logstash'
  templates 'output_elasticsearch' => 'output_elasticsearch.conf.erb'
  instance 'server'
  variables node['elk_logstash']['server']
end

logstash_config 'elasticsearch output' do
  templates_cookbook 'elk_logstash'
  templates 'output_file' => 'output_file.conf.erb'
  instance 'server'
  variables node['elk_logstash']['server']
end
