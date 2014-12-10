require 'ruby_version'
minimum_supported_ruby_version = '2.1.0'
raise "Ruby #{RUBY_VERSION} isn't supported. Ruby must be at least version #{minimum_supported_ruby_version}." unless RubyVersion >= minimum_supported_ruby_version

require 'uri'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'virtus'
require 'figaro'
require 'initializer'
require 'test_abstractions'

require 'tests/example_data/login'
require 'tests/interactions/login'


require 'tests/example_data/draft_product'
require 'tests/interactions/draft_product'
