# frozen_string_literal: true

# PublicHoliday
class SouthlandAnniversary < EasterSunday
  # Observed on Easter Tuesday
  def call
    easter_sunday = super
    observed_date = easter_sunday[:actual_at] + 2
    actual_date = DateTime.new(year, 1, 17)
    { actual_at: actual_date, observed_at: observed_date }
  end
end
