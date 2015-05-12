#
# Cookbook Name:: elk_logstash
# Recipe:: default
#
# Copyright (c) 2015 EverTrue, inc, All Rights Reserved.

include_recipe 'apt'
include_recipe 'java'
include_recipe 'logstash::server'
