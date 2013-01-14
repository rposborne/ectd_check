# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ectd_check/version'

Gem::Specification.new do |gem|
  gem.name          = "ectd_check"
  gem.version       = EctdCheck::VERSION
  gem.authors       = ["Russell Osborne"]
  gem.email         = ["russell@burningpony.com"]
  gem.description   = %q{A simple command line tool to check and repair md5 hashes based upon the FDA eCTD specification}
  gem.summary       = %q{A simple command line tool to check and repair md5 hashes based upon the FDA eCTD specification.   It will interactively repair the md5's and list errors found.}
  gem.homepage      = "http://scilucent.com"
  gem.add_dependency "nokogiri"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
