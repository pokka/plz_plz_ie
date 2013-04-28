#coding:utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plz_plz_ie/version'

Gem::Specification.new do |s|
  s.name          = "plz_plz_ie"
  s.version       = PlzPlzIE::VERSION
  s.authors       = ["pokka"]
  s.email         = ["ifunafu@gmail.com"]
  s.description   = %q{render a page to the old IE browser}
  s.summary       = %q{render a page to the old IE browser}
  s.homepage      = "https://github.com/pokka/plz_plz_ie"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 1.9.2"

  # s.add_dependency "erubis", ">= 2.6.6"
end
