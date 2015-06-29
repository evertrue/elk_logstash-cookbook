require 'spec_helper'

describe 'elk_logstash::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe service('logstash_server') do
    it { should be_running }
    it { should be_enabled }
  end
end
