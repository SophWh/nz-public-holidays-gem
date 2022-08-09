# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

# PublicHoliday
class TaranakiAnniversary < PublicHoliday
  private

  # Observed on the second Monday of March
  def calculate
    actual_date = DateTime.new(year, 3, 31)
    observed_date = nth_occurrence_of_monday_in_month(2, 3)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
