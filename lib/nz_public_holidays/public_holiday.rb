# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

require 'date'

# PublicHoliday
class PublicHoliday
  def initialize(year)
    @year = year
  end

  attr_reader :year

  def call
    calculate
  end

  private

  def calculate; end

  # Common helper methods

  # Gets nth occurrence of monday in the given Monday
  def nth_occurrence_of_monday_in_month(occurrence_number, month)
    # Get weekday on 1st of month and calculate offset to next Monday
    offset = (8 - DateTime.new(year, month, 1).wday) % 7
    # Apply offset to get first Monday of month
    first_monday = (DateTime.new(year, month, 1) + offset)
    # Add n-1 weeks to get nth Monday of March
    first_monday += (occurrence_number - 1) * 7 # rubocop:disable Lint/UselessAssignment
  end

  # Calculates closest Monday, before or after current date
  def nearest_monday(date)
    days_to_past_monday = date.wday.zero? ? 6 : date.wday - 1
    nearest_monday = date - days_to_past_monday
    nearest_monday += 7 if date.wday > 4 || date.wday.zero?

    nearest_monday
  end
end
