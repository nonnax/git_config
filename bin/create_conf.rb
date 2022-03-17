#!/usr/bin/env ruby
# Id$ nonnax 2022-03-17 12:09:41 +0800
require 'yaml'

config={
  username: 'nonnax',
  email: 'inonnax@gmail.com',
  https: 'https://github.com/nonnax/',
  ssh: 'git@github.com/nonnax/',
  password: 'xxxx'
}.transform_keys(&:to_s)

File.write '.git_config.yml', config.to_yaml
