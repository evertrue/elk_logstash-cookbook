%w(key certificate).each do |c|
  ssl_thing = data_bag_item(
    node['elk_logstash']['certs']["#{c}_data_bag"],
    node['elk_logstash']['certs']["#{c}_data_bag_item"]
  )[node['elk_logstash']['certs']["#{c}_data_bag_item_key"]]

  directory File.dirname(node['elk']['server']['lumberjack']["ssl #{c}"]) do
    recursive true
  end

  fail "Need SSL #{c} couldn't find it" if ssl_thing.nil? || ssl_thing.empty?

  file node['elk']['server']['lumberjack']["ssl #{c}"] do
    content ssl_thing
    sensitive true
    notifies :restart, 'logstash_service[server]'
  end
end
