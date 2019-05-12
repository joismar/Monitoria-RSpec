require 'bundler/inline'

gemfile true do
	source 'http://rubygems.org'
	gem 'rspec', '3.5.0'
  gem "nyan-cat-formatter"
end

require './spec/monitoria_spec'

RSpec::Core::Runner.invoke
