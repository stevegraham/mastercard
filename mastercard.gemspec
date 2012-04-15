# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mastercard/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Stevie Graham"]
  gem.email         = ["sjtgraham@mac.com"]
  gem.description   = "MasterCard API Gem"
  gem.summary       = "Ruby library for the MasterCard API"
  gem.homepage      = "https://github.com/stevegraham/mastercard"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mastercard"
  gem.require_paths = ["lib"]
  gem.version       = Mastercard::VERSION
end
