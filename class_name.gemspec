
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "class_name/version"

class Gem::Specification # rubocop:disable ClassAndModuleChildren
  def self.rails_gem_version
    # Allow different versions of the rails gems to be specified, for testing
    @rails_gem_version ||=
      ENV['RAILS_VERSION'] ? "~> #{ENV['RAILS_VERSION']}" : ['>= 4.1', '< 6.0']
  end
end

Gem::Specification.new do |spec|
  spec.name          = "class_name"
  spec.version       = ClassName::VERSION
  spec.authors       = ["Myk Klemme"]
  spec.email         = ["mykklemme@gmail.com"]

  spec.summary       = "A rails helper to generate conditional class names"
  spec.description   = "A rails helper to generate conditional class names"
  spec.homepage      = "https://github.com/invisiblehats/class_name"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/invisiblehats/class_name"
    spec.metadata["changelog_uri"] = "https://github.com/invisiblehats/class_name/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport', Gem::Specification.rails_gem_version

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
