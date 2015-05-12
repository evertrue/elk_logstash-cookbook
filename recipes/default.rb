#
# Cookbook Name:: elk_logstash
# Recipe:: default
#
# Copyright (c) 2015 EverTrue, inc, All Rights Reserved.

include_recipe 'apt'
include_recipe 'java'

node.set['elk_logstash']['server']['lumberjack']['host'] = '0.0.0.0'

include_recipe 'logstash::server'
