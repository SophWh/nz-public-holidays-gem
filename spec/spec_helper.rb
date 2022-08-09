# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

require 'byebug'

# NOTE: As we re using an inheritance model we need to load these
#       files in a particular order so we dont break the require
#       function
%w[
  version
  public_holiday
  easter_sunday
  labour_day
  anzac_day
  auckland_anniversary
  boxing_day
  canterbury_anniversary
  chatham_islands_anniversary
  christmas_day
  easter_monday
  good_friday
  hawkes_bay_anniversary
  january_second
  marlborough_anniversary
  matariki
  nelson_anniversary
  new_years_day
  otago_anniversary
  queens_birthday
  south_canterbury_anniversary
  southland_anniversary
  taranaki_anniversary
  waitangi_day
  wellington_anniversary
  westland_anniversary
].each { |file| require "./lib/nz_public_holidays/#{file}" }

%w[
  holiday_helper
  holiday_service
].each { |file| require "./spec/support/#{file}" }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
