require 'ruby_version'
minimim_supported_ruby_version = '2.1.0'
raise "Ruby #{RUBY_VERSION} isn't supported. Ruby must be at least version #{minimim_supported_ruby_version}." unless RubyVersion >= minimim_supported_ruby_version

require 'uri'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'virtus'
require 'initializer'

require 'test_abstractions/client'
require 'test_abstractions/configuration'
require 'test_abstractions/context'
require 'test_abstractions/entity'
require 'test_abstractions/evidence'
require 'test_abstractions/fields'
require 'test_abstractions/filler'
require 'test_abstractions/form'
