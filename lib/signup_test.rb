require 'ruby_version'
minimum_supported_ruby_version = '2.1.0'
raise "Ruby #{RUBY_VERSION} isn't supported. Ruby must be at least version #{minimim_supported_ruby_version}." unless RubyVersion >= minimum_supported_ruby_version

require 'uri'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'virtus'
require 'initializer'
require 'test_abstractions'

require 'signup_test/example_data/sign_up'
require 'signup_test/interactions/sign_up'
