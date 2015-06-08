require 'spec_helper'

describe 'elk_logstash::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe service('logstash_server') do
    it { should be_running }
    it { should be_enabled }
  end
end

describe 'elk_logstash::configure' do
  describe file('/opt/logstash/server/etc/conf.d/input_lumberjack') do
    it { should be_file }
    its(:content) { should include 'input' }
    its(:content) { should include 'lumberjack' }
  end

  describe file('/opt/logstash/server/etc/conf.d/filter_syslog') do
    it { should be_file }
    its(:content) { should include 'filter' }
    its(:content) { should include 'grok' }
  end

  describe file('/opt/logstash/server/etc/conf.d/output_elasticsearch') do
    it { should be_file }
    its(:content) { should include 'output' }
    its(:content) { should include 'elasticsearch' }
  end
end
