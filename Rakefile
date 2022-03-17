#!/usr/bin/env ruby
# Id$ nonnax 2022-03-17 13:25:13 +0800
task default: %w[install]

desc 'copies .git_config.yml to home directory'
task :init do
  sh 'cp .git_config.yml ~/'
end

desc 'build git_config.0.0.1.gem'
task build: %w[init] do
  sh 'gem build git_config.gemspec'
end

desc 'installs git_config.0.0.1.gem'
task install: %w[build] do
  sh 'sudo gem install git_config.0.0.1.gem'
end
