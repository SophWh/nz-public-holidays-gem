# frozen_string_literal: true

# PublicHoliday
class HawkesBayAnniversary < LabourDay
  # Observed on Friday before Labour Day
  def call
    labour_day = super
    observed_date = labour_day[:actual_at] - 3 # Labour Day is always on a Monday
    actual_date = DateTime.new(year, 11, 1)
    { actual_at: actual_date, observed_at: observed_date }
  end
end
