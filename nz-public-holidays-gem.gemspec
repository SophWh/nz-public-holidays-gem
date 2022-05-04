# frozen_string_literal: true

require_relative "lib/nz/public/holidays/gem/version"

Gem::Specification.new do |spec|
  spec.name = "nz-public-holidays-gem"
  spec.version = Nz::Public::Holidays::Gem::VERSION
  spec.authors = ["SophWh", "trevh-dc"]
  spec.email = ["sophiewhiteheadnz@gmail.com"]

  spec.summary = "Gem to calculate New Zealand public holidays"
  # spec.description = "Write a longer description or delete this line."
  spec.homepage = "https://github.com/SophWh/nz-public-holidays-gem"
  spec.license = "MIT" # TODO: Read up on this
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "Set to your gem server 'https://example.com'" # TODO

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/SophWh/nz-public-holidays-gem"
  # spec.metadata["changelog_uri"] = "https://example.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # TODO: Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
