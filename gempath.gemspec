# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gempath/version"

Gem::Specification.new do |s|
  s.name        = "gempath"
  s.version     = Gempath::VERSION
  s.authors     = ["Micah Koga"]
  s.email       = ["m@mkoga.com"]
  s.homepage    = "http://github.com/mkoga/gempath"
  s.summary     = %q{echo a gem's path}
  s.description = %q{A script that echo's out the path to a specified gem.}

  s.rubyforge_project = "gempath"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  # s.add_runtime_dependency "rest-client"
end
