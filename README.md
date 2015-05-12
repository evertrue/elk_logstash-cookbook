# elk_logstash

[![Build Status](https://travis-ci.org/evertrue/elk_logstash-cookbook.svg)](https://travis-ci.org/evertrue/elk_logstash-cookbook)

TODO: Enter the cookbook description here.

# Requirements

* `apt` cookbook
* `some` cookbook
* `another` cookbook


# Recipes

## default

Short Description

1. Set up & updates apt using `apt::default`
2. Install xyz by some proccess
3. Include various recipes for this cookbook:
    * `elk_logstash::install`
        - which includes `elk_logstash::another`
    * `elk_logstash::configure`


## Stuffs you need to do

Set the following attributes if you are using the configure recipe. see http://logstash.net/docs/1.4.2/inputs/lumberjack

```
node['elk_logstash']['server']['lumberjack']['ssl certificate'],
node['elk_logstash']['server']['lumberjack']['ssl key'],
node['elk_logstash']['server']['lumberjack']['host'],
node['elk_logstash']['server']['lumberjack']['port'],
```

And any ES settings you need http://logstash.net/docs/1.4.2/outputs/elasticsearch

```
node['elk_logstash']['server']['elasticsearch']['elasticsearch_ip'],
node['elk_logstash']['server']['elasticsearch']['elasticsearch_cluster'],
node['elk_logstash']['server']['elasticsearch']['elasticsearch_embedded'],
node['elk_logstash']['server']['elasticsearch']['bind_host'],
node['elk_logstash']['server']['elasticsearch']['es_index'],
node['elk_logstash']['server']['elasticsearch']['elasticsearch_protocol'],
```

## install

More info about the install recipe

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
