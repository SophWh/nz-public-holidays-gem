# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

require './lib/nz_public_holidays/version'

Gem::Specification.new do |spec|
  spec.name = 'nz_public_holidays'
  spec.version = NewZealandPublicHoliday::Gem::VERSION
  spec.authors = %w[SophWh trevh-dc]
  spec.email = ['sophiewhiteheadnz@gmail.com']

  spec.summary = 'Ruby gem to calculate the dates of New Zealand public holidays'
  spec.description = "Provides a collection of service classes that calculate the actual and observed dates for each New Zealand public holiday."
  spec.homepage = 'https://github.com/SophWh/nz-public-holidays-gem'
  spec.license = 'GPL-3.0-only'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SophWh/nz-public-holidays-gem'
  # spec.metadata["changelog_uri"] = "https://example.com"
  # spec.metadata['allowed_push_host'] = "Set to your gem server 'https://example.com'"

  # Specifies which files should be added to the gem when it is released.
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
  spec.add_development_dependency 'byebug', '~> 11.1'
  spec.add_development_dependency 'rubocop', '~> 1.21'
end
