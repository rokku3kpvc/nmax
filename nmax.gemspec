lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nmax/version"

Gem::Specification.new do |spec|
  spec.name          = "nmax"
  spec.version       = Nmax::VERSION
  spec.authors       = ["rokku3kpvc"]
  spec.email         = ["ykwnd@yahoo.com"]

  spec.summary       = "This gem read all STDIN and return the n largest numbers."
  spec.description   = "Made by rokku3kpvc for FunBox QT."
  spec.homepage      = "https://github.com/rokku3kpvc/nmax."
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rokku3kpvc/nmax"
  spec.metadata["changelog_uri"] = "https://github.com/rokku3kpvc/nmax"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
