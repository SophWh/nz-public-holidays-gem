# frozen_string_literal: true

# PublicHoliday
class QueensBirthday < PublicHoliday
  private

  # Calculates the first Monday of June
  def calculate
    date = nth_occurrence_of_monday_in_month(1, 6)

    { actual_at: date, observed_at: date }
  end
end
