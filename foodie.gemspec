# frozen_string_literal: true

require_relative "lib/foodie/version"

Gem::Specification.new do |spec|

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_dependency "activesupport", "~> 4.2.0"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"

  spec.name          = "foodie"
  spec.version       = Foodie::VERSION
  spec.authors       = ["clone18476"]
  spec.email         = ["cameroncousins18@gmail.com"]

  spec.summary       = " my project"
  spec.description   = "my project"
  spec.homepage      = "https://github.com/clone18476"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/clone18476"
  spec.metadata["changelog_uri"] = "https://github.com/clone18476"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
