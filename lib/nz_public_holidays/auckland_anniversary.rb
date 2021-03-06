# frozen_string_literal: true

# PublicHoliday
class AucklandAnniversary < PublicHoliday
  private

  # Observed Monday closest to the 29th January
  def calculate
    actual_date = DateTime.new(year, 1, 29)
    observed_date = nearest_monday(actual_date)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
