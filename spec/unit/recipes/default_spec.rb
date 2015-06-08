#
# Cookbook Name:: elk_logstash
# Spec:: default
#
# Copyright (c) 2015 EverTrue, inc, All Rights Reserved.

require 'spec_helper'

describe 'elk_logstash::default' do
  before do
    Fauxhai.mock(platform: 'ubuntu', version: '14.04')
  end

  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end
    it 'converges successfully' do
      chef_run # This should not raise an error
    end
  end
end
