$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lcsh_suggest/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lcsh_suggest"
  s.version     = LcshSuggest::VERSION
  s.authors     = ["Adam Wead"]
  s.email       = ["amsterdamos@gmail.com"]
  s.homepage    = "https://github.com/awead/lcsh_suggest"
  s.summary     = "Search Libary of Congress' subject headings"
  s.description = "Queries Library of Congress' subject heading search API and returns results in JSON."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "curb"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
end
