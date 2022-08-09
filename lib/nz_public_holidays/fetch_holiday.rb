# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

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
