# NzPublicHolidays - Ruby gem to calculate the dates of New Zealand public holidays
# Copyright (C) 2022 SophWh
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

# frozen_string_literal: true

require 'spec_helper'

RSpec.shared_examples 'a holiday service' do |test_data|
  let(:date_format) { '%Y-%m-%d' }

  context 'when calculating holiday dates for' do
    it test_data.klass.name.to_s do
      test_data.known_years.each do |year|
        dates       = test_data.klass.new(year).call
        actual_at   = dates[:actual_at].strftime(date_format)
        observed_at = dates[:observed_at].strftime(date_format)

        expect(test_data.observed_dates).to include(observed_at)
        expect(test_data.actual_dates).to include(actual_at)
      end
    end
  end
end
