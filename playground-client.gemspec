require File.join([File.dirname(__FILE__), 'lib', 'playground-client', 'version.rb'])

spec = Gem::Specification.new do |s| 
  s.name                = 'playground-client'
  s.version             = PlaygroundClient::VERSION
  s.authors             = ['Jason Frame']
  s.email               = ["jason@onehackoranother.com"]
  # s.homepage            = 'http://your.website.com'
  s.platform            = Gem::Platform::RUBY
  s.summary             = "playground API client"
  s.description         = "A client for the playground service"
  s.files               = Dir["{lib,bin}/**/*", "README.rdoc"]
  s.test_files          = Dir["{features,test}/**/*"]
  s.require_paths       << 'lib'
  s.has_rdoc            = true
  s.extra_rdoc_files    = ['README.rdoc','playground-client.rdoc']
  s.rdoc_options        << '--title' << 'playground-client' << '--main' << 'README.rdoc' << '-ri'
  s.bindir              = 'bin'
  s.executables         = ['playground']
  s.license             = 'MIT'

  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')

  s.add_runtime_dependency('httparty', '~> 0.13', '>= 0.13.1')
  s.add_runtime_dependency('gli', '2.12.2')
  s.add_runtime_dependency('highline', '1.6.21')
end
