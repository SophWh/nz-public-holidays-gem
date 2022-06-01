# frozen_string_literal: true

# PublicHoliday
class LabourDay < PublicHoliday
  private

  # Calculates the fourth Monday of October
  def calculate
    date = nth_occurrence_of_monday_in_month(4, 10)

    { actual_at: date, observed_at: date }
  end
end
