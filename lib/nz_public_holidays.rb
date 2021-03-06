# frozen_string_literal: true

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
  fetch_holiday
].each { |file| require "nz_public_holidays/#{file}.rb" }