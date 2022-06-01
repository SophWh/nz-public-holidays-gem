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
