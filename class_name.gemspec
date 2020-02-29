$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "class_name/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "class_name"
  spec.version     = ClassName::VERSION
  spec.authors     = ["Myk Klemme"]
  spec.email       = ["mykklemme@gmail.com"]
  spec.homepage    = "https://github.com/invisiblehats/class_name"
  spec.summary     = "Generate dynamic class strings easily"
  spec.description = "Generate dynamic class strings easily"
  spec.license     = "GNU General Public License v3.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "activesupport"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
