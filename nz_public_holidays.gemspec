# frozen_string_literal: true

require_relative 'lib/nz_public_holidays/version'

Gem::Specification.new do |spec|
  spec.name = 'nz_public_holidays'
  spec.version = NewZealandPublicHoliday::Gem::VERSION
  spec.authors = %w[SophWh trevh-dc]
  spec.email = ['sophiewhiteheadnz@gmail.com']

  spec.summary = 'Ruby gem to calculate the dates of New Zealand public holidays'
  spec.description = "Provides a list of service classes that calculate the actual and observed dates for each New Zealand public holiday"
  spec.homepage = 'https://github.com/SophWh/nz-public-holidays-gem'
  spec.license = 'MIT' # TODO: Read up on this
  spec.required_ruby_version = '>= 2.6.0'

  # spec.metadata['allowed_push_host'] = "Set to your gem server 'https://example.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SophWh/nz-public-holidays-gem'
  # spec.metadata["changelog_uri"] = "https://example.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Dependencies
  spec.add_dependency "rake", "~> 13.0"
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rubocop', '~> 1.21'
end