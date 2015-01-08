$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "playground_client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "playground-client"
  s.version     = PlaygroundClient::VERSION
  s.authors     = ["Jason Frame"]
  s.email       = ["jason@onehackoranother.com"]
  #s.homepage    = ""
  s.summary     = "playground API client"
  s.description = "A client for the playground service"

  s.files = Dir["{lib}/**/*", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'httparty', '~> 0.13', '>= 0.13.1'

  s.license     = 'MIT'
end