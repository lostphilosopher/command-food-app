# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "command-food-app"
  spec.version       = '1.0'
  spec.authors       = ["Wyatt Andersen"]
  spec.email         = ["wandersen02@gmail.com"]
  spec.summary       = %q{CLI for ordering delivery food with watir-webdriver.}
  spec.description   = %q{CLI for ordering delivery food with watir-webdriver.}
  spec.homepage      = "http://wyattandersen.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/command-food-app.rb']
  spec.executables   = ['bin/command-food-app']
  spec.test_files    = ['tests/test_command-food-app.rb']
  spec.require_paths = ["lib"]
end