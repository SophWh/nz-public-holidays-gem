class FetchHoliday
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
