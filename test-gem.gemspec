lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test-gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'test-gem'
  spec.version       = TestGem::VERSION
  spec.authors       = ['Kolka']
  spec.email         = ['zduderman@gmail.com']

  spec.summary       = 'Just testing things'
  spec.description   = 'Just testing things'
  spec.homepage      = 'https://github.com/duderman/test-gem'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.require_paths = ['lib']
end
