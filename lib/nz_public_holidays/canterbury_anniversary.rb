# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

# PublicHoliday
class CanterburyAnniversary < PublicHoliday
  private

  # Observed on second Friday after first Tuesday in November
  def calculate
    actual_date = DateTime.new(year, 12, 16)

    # Get first Tuesday in November
    observed_date = DateTime.new(year, 11, 1)
    observed_date = nth_occurrence_of_monday_in_month(1, 11) + 1 unless observed_date.wday == 2

    # Get second Friday after the above
    observed_date = second_friday(observed_date)

    { actual_at: actual_date, observed_at: observed_date }
  end

  # Calculates second Friday after given date
  def second_friday(date)
    # Get weekday on given date and calculate offset to next Friday
    offset = (5 - date.wday) % 7
    next_friday = (date + offset)
    next_friday += 7 if offset.zero? # If given day is already a Friday, get the next one

    next_friday += 7
    next_friday
  end
end
