# elk_logstash

[![Build Status](https://travis-ci.org/evertrue/elk_logstash-cookbook.svg)](https://travis-ci.org/evertrue/elk_logstash-cookbook)

Wraps the [Logstash Cookbook](https://github.com/lusis/chef-logstash) to install a centralized Logstash environnment with Lumberjack certificates and other goodies / optimizations

# Requirements

  * logstash
  * apt
  * java
  * runit

# Recipes

## default

Installs and sets up a Logstash agent

1. Installs java and runit
2. Installs Logstash and sets up configuration, plugins, and a service

## configure

Configures Logstash with some opinionated defaults like:
  * a lumberjack input
  * an elasticsearch output


### Stuff you need to do if you use the configure recipe

Set the following attributes if you are using the configure recipe. see [the lumberjack docs](http://logstash.net/docs/1.4.2/inputs/lumberjack)

```
node['elk_logstash']['server']['lumberjack']['ssl certificate'],
node['elk_logstash']['server']['lumberjack']['ssl key'],
node['elk_logstash']['server']['lumberjack']['host'],
node['elk_logstash']['server']['lumberjack']['port'],
```

And any ES settings you need [](http://logstash.net/docs/1.4.2/outputs/elasticsearch)

```
node['elk_logstash']['server']['elasticsearch']['elasticsearch_ip'],
node['elk_logstash']['server']['elasticsearch']['elasticsearch_cluster'],
node['elk_logstash']['server']['elasticsearch']['elasticsearch_embedded'],
node['elk_logstash']['server']['elasticsearch']['bind_host'],
node['elk_logstash']['server']['elasticsearch']['es_index'],
node['elk_logstash']['server']['elasticsearch']['elasticsearch_protocol'],
```

## certs

Pulls server cert, and server keys out of a data bag

1. see the `[attributes/certs.rb](https://github.com/evertrue/elk_logstash-cookbook/blob/master/attributes/certs.rb)` for more info


# Usage

Include this recipe in a wrapper cookbook:

```
depends 'elk_logstash', '~> 1.0'
```

```
include_recipe 'elk_logstash::default'
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests with `kitchen test`, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Author:: EverTrue, inc (devops@evertrue.com)
