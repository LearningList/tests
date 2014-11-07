require 'ruby_version'
minimim_supported_ruby_version = '2.1.0'
raise "Ruby #{RUBY_VERSION} isn't supported. Ruby must be at least version #{minimim_supported_ruby_version}." unless RubyVersion >= minimim_supported_ruby_version

require 'uri'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'require_all'
require 'virtus'
require 'initializer'

require_rel 'appointments_test'
