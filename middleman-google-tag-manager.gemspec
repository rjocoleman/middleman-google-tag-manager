# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'middleman-google-tag-manager'
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Robert Coleman']
  s.email       = ['github@robert.net.nz']
  s.homepage    = 'https://github.com/rjocoleman/middleman-google-tag-manager'
  s.summary     = %q{Google Tag Manager for Middleman static sites}
  s.description = %q{Google Tag Manager for Middleman static sites}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'middleman-core', '>= 4.0'
end
