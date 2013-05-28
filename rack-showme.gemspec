# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack/showme/version"

Gem::Specification.new do |s|
  s.name        = "rack-showme"
  s.version     = Rack::Showme::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Omar Vargas"]
  s.email       = ["ovargas27@gmail.com"]
  s.homepage    = "https://github.com/Nearsoft/rack-showme"
  s.summary     = %q{Injects a message into HTML responses.}
  s.description =  %q{Rack middleware that injects a message into HTML responses.}
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]
end
