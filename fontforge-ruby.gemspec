# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fontforge-ruby"
  spec.version       = "0.1.1"
  spec.authors       = ["Renny Ren"]
  spec.email         = ["rennyrjh@gmail.com"]
  spec.summary       = "A Ruby wrapper for FontForge"
  spec.homepage      = "https://github.com/renny-ren/fontforge-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'
  spec.add_dependency 'builder'
  spec.add_dependency 'httparty'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"

  spec.add_development_dependency "fakeweb"
  spec.add_development_dependency "awesome_print"
end
