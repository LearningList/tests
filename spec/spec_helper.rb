include RSpec

RSpec.configure do |config|
  config.before(:suite) do
    TestAbstractions::Client.instance.open 'http://staff.lvh.me:3000'
  end
end
