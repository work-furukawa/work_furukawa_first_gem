lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "work_furukawa_first_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "work_furukawa_first_gem"
  spec.version       = WorkFurukawaFirstGem::VERSION
  spec.authors       = ["work.furukawa"]
  spec.email         = [""]

  spec.summary       = %q{my first gem.}
  spec.description   = %q{my first gem.}
  spec.homepage      = "https://github.com/work-furukawa/work_furukawa_first_gem"
  spec.license       = "MIT"

#  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.8"
end
