puts RUBY_DESCRIPTION
puts

require_relative '../init.rb'
require_relative './spec_helper'

include SignUpTest
include SignUpTest::ExampleData
include SignUpTest::Interactions

# SignUpTest.configure do |config|
#   config.base_uri = 'http://localhost:3000'
# end
