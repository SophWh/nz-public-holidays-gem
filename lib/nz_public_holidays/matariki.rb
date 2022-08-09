# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

# PublicHoliday
class Matariki < PublicHoliday
  private

  DATES = [
    { year: 2022, date: DateTime.new(2022, 6, 24) },
    { year: 2023, date: DateTime.new(2023, 7, 14) },
    { year: 2024, date: DateTime.new(2024, 6, 28) },
    { year: 2025, date: DateTime.new(2025, 6, 20) },
    { year: 2026, date: DateTime.new(2026, 7, 10) },
    { year: 2027, date: DateTime.new(2027, 6, 25) },
    { year: 2028, date: DateTime.new(2028, 7, 14) },
    { year: 2029, date: DateTime.new(2029, 7, 6) },
    { year: 2030, date: DateTime.new(2030, 6, 21) },
    { year: 2031, date: DateTime.new(2031, 7, 11) },
    { year: 2032, date: DateTime.new(2032, 7, 2) },
    { year: 2033, date: DateTime.new(2033, 6, 24) },
    { year: 2034, date: DateTime.new(2034, 7, 7) },
    { year: 2035, date: DateTime.new(2035, 6, 29) },
    { year: 2036, date: DateTime.new(2036, 7, 18) },
    { year: 2037, date: DateTime.new(2037, 7, 10) },
    { year: 2038, date: DateTime.new(2038, 6, 25) },
    { year: 2039, date: DateTime.new(2039, 7, 15) },
    { year: 2040, date: DateTime.new(2040, 7, 6) },
    { year: 2041, date: DateTime.new(2041, 7, 19) },
    { year: 2042, date: DateTime.new(2042, 7, 11) },
    { year: 2043, date: DateTime.new(2043, 7, 3) },
    { year: 2044, date: DateTime.new(2044, 6, 24) },
    { year: 2045, date: DateTime.new(2045, 7, 7) },
    { year: 2046, date: DateTime.new(2046, 6, 29) },
    { year: 2047, date: DateTime.new(2047, 7, 19) },
    { year: 2048, date: DateTime.new(2048, 7, 3) },
    { year: 2049, date: DateTime.new(2049, 6, 25) },
    { year: 2050, date: DateTime.new(2050, 7, 15) },
    { year: 2051, date: DateTime.new(2051, 6, 30) },
    { year: 2052, date: DateTime.new(2052, 6, 21) }
  ]

  def calculate
    date = DATES.select{ |date| date[:year] == @year }.first[:date]

    { actual_at: date, observed_at: date }
  end
end
