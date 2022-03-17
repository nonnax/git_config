#!/usr/bin/env ruby
# frozen_string_literal: true

# Id$ nonnax 2022-03-17 11:54:21 +0800
require 'yaml'

CONFIG_FILE = File.expand_path '~/.git_config.yml'

module Git
  attr :config, :password
  def self.load
    @@config =
      File
      .read(CONFIG_FILE)
      .then { |text| YAML.safe_load text }
      .then { |obj| obj.transform_keys(&:to_sym) }

    @@config.each do |k, v|
      define_singleton_method(k) { v }
    end
  end

  def self.[](*args)
    @@config.select { |k, _v| args.include?(k) }
  end

  load
end
