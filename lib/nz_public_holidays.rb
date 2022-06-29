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
].each { |file| require "nz_public_holidays/#{file}.rb" }

class NzPublicHolidays
  YEAR_REGEX = /\A[0-9]{4}\z/
  NATIONAL = :national
  REGIONAL = :regional
  HOLIDAYS = [
    { name: :GoodFriday, type: NATIONAL },
    { name: :EasterSunday, type: NATIONAL },
    { name: :EasterMonday, type: NATIONAL },
    { name: :WaitangiDay, type: NATIONAL },
    { name: :AnzacDay, type: NATIONAL },
    { name: :QueensBirthday, type: NATIONAL },
    { name: :LabourDay, type: NATIONAL },
    { name: :ChristmasDay, type: NATIONAL },
    { name: :BoxingDay, type: NATIONAL },
    { name: :NewYearsDay, type: NATIONAL },
    { name: :JanuarySecond, type: NATIONAL },
    { name: :AucklandAnniversary, type: REGIONAL },
    { name: :TaranakiAnniversary, type: REGIONAL },
    { name: :WellingtonAnniversary, type: REGIONAL },
    { name: :NelsonAnniversary, type: REGIONAL },
    { name: :ChathamIslandsAnniversary, type: REGIONAL },
    { name: :SouthCanterburyAnniversary, type: REGIONAL },
    { name: :OtagoAnniversary, type: REGIONAL },
    { name: :WestlandAnniversary, type: REGIONAL },
    { name: :SouthlandAnniversary, type: REGIONAL },
    { name: :MarlboroughAnniversary, type: REGIONAL },
    { name: :HawkesBayAnniversary, type: REGIONAL },
    { name: :CanterburyAnniversary, type: REGIONAL }
  ].freeze

  def self.fetch_holidays(start_year, end_year) # rubocop:disable Metrics/AbcSize
    (start_year..end_year).inject([]) do |holidays, year|
      next unless year.to_s.match(YEAR_REGEX) # rubocop:disable Lint/NextWithoutAccumulator

      holidays + HOLIDAYS.map do |holiday|
        service = holiday[:name].to_s
        dates   = service.constantize.new(year).call
        time    = Time.zone.now

        {
          holiday_name: service.titleize,
          actual_at: dates[:actual_at],
          observed_at: dates[:observed_at],
          holiday_type: holiday[:type].to_s,
          updated_at: time,
          created_at: time
        }
      end
    end
  end
end
