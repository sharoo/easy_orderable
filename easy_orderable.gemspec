lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "easy_orderable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "easy_orderable"
  s.version     = EasyOrderable::VERSION
  s.authors     = ["Filip Pavic"]
  s.email       = ["pavicfp@gmail.com"]
  s.homepage    = "https://github.com/sharoo/easy_orderable"
  s.summary     = "Easy ordering of Active Record objects"
  s.description = "Provide ordering interface for clients with minimal configuration in Active Record models"

  s.license     = "MIT"

  s.require_paths = ["lib"]
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_bot_rails"
end