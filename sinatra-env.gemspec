# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "sinatra-env/version"

Gem::Specification.new do |s|
  s.name        = "sinatra-env"
  s.version     = Sinatra::Env::VERSION
  s.authors     = ["Sean Behan"]
  s.email       = ["bseanvt@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Sinatra Env}
  s.description = %q{Sinatra.env a`la Rails.env}

  s.rubyforge_project = "sinatra-env"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end