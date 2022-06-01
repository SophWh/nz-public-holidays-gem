# frozen_string_literal: true

# PublicHoliday
class WellingtonAnniversary < PublicHoliday
  private

  # Observed on Monday closest to the 22nd January
  def calculate
    actual_date = DateTime.new(year, 1, 22)
    observed_date = nearest_monday(actual_date)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
