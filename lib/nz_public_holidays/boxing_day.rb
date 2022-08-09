# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

# PublicHoliday
class BoxingDay < PublicHoliday
  private

  def calculate
    actual_date = DateTime.new(year, 12, 26)
    observed_date = if actual_date.saturday?
                      actual_date + 2
                    elsif actual_date.sunday?
                      actual_date + 2 # Christmas day will be on Saturday, so will be moved to Monday
                    else
                      actual_date
                    end

    { actual_at: actual_date, observed_at: observed_date }
  end
end
