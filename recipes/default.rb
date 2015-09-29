#
# Cookbook Name:: elk_logstash
# Recipe:: default
#
# Copyright (c) 2015 EverTrue, inc, All Rights Reserved.

include_recipe 'apt'
include_recipe 'java'
include_recipe 'runit'

node.set['elk_logstash']['server']['lumberjack']['host'] = '0.0.0.0'

name = 'server'

logstash_instance name do
  action :create
end

logstash_service name do
  action [:enable]
  method 'native'
end

logstash_config name do
  action [:create]
  notifies :restart, "logstash_service[#{name}]"
end
# ^ see `.kitchen.yml` for example attributes to configure templates.

node['elk_logstash']['plugins'].each do |plugin|
  logstash_plugins plugin do
    instance name
    action [:create]
  end
end


logstash_pattern name do
  action [:create]
end
