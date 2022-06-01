# frozen_string_literal: true

# PublicHoliday
class NelsonAnniversary < PublicHoliday
  private

  # Observed on Monday closest to the 1st February
  def calculate
    actual_date = DateTime.new(year, 2, 1)
    observed_date = nearest_monday(actual_date)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
