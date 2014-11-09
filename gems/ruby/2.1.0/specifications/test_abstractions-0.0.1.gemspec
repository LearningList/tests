# -*- encoding: utf-8 -*-
# stub: test_abstractions 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "test_abstractions"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Scott Bellware"]
  s.date = "2014-11-07"
  s.homepage = "https://github.com/sbellware/test_abstractions"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2")
  s.rubygems_version = "2.2.0"
  s.summary = "Test Abstractions Library"

  s.installed_by_version = "2.2.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capybara>, [">= 0"])
      s.add_runtime_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_runtime_dependency(%q<poltergeist>, [">= 0"])
      s.add_runtime_dependency(%q<initializer>, [">= 0"])
      s.add_runtime_dependency(%q<require_all>, [">= 0"])
      s.add_runtime_dependency(%q<ruby_version>, [">= 0"])
      s.add_runtime_dependency(%q<virtus>, [">= 0"])
    else
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<poltergeist>, [">= 0"])
      s.add_dependency(%q<initializer>, [">= 0"])
      s.add_dependency(%q<require_all>, [">= 0"])
      s.add_dependency(%q<ruby_version>, [">= 0"])
      s.add_dependency(%q<virtus>, [">= 0"])
    end
  else
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<poltergeist>, [">= 0"])
    s.add_dependency(%q<initializer>, [">= 0"])
    s.add_dependency(%q<require_all>, [">= 0"])
    s.add_dependency(%q<ruby_version>, [">= 0"])
    s.add_dependency(%q<virtus>, [">= 0"])
  end
end
