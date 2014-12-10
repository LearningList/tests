puts RUBY_DESCRIPTION
puts

require_relative '../init.rb'
require_relative './spec_helper'

include Tests
include Tests::ExampleData
include Tests::Interactions

base_uri = ENV['CAPYBARA_BASE_URI']
driver_name = ENV['CAPYBARA_DRIVER_NAME']
driver_name = driver_name.downcase.to_sym if driver_name

base_uri ||= 'http://staff.lvh.me:3000'
driver_name ||= :selenium

TestAbstractions.configure do |config|
  config.base_uri = base_uri
  config.driver_name = driver_name
end
