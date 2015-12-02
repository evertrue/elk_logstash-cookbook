# THIS COOKBOOK IS DEPRECATED

## This cookbook (elk_logstash) is deprecated. Please use et_elk instead.

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
