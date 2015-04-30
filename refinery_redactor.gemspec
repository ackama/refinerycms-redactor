$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "refinery/redactor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "refinerycms-redactor"
  s.version     = Refinery::Redactor::VERSION
  s.authors     = ["Josh McArthur"]
  s.email       = ["joshua.mcarthur@gmail.com"]
  s.homepage    = "https://github.com/rabidtech/refinery-redactor"
  s.summary     = "Adds support for using the Redactor editor in a Refinery site"
  s.description = "Adds support for using the Redactor editor in a Refinery site. Bring your own license!"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency    'refinerycms-core', '~> 3.0', '>= 3.0.0'
end
