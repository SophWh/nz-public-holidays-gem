class CanterburyAnniversary < NzPublicHolidaysGem::Services::PublicHoliday
  private

  # Observed on second Friday after first Tuesday in November
  def calculate
    actual_date = DateTime.new(year, 12, 16)

    # Get first Tuesday in November
    observed_date = DateTime.new(year, 11, 1)
    observed_date = nth_occurrence_of_monday_in_month(1, 11) + 1 unless observed_date.wday == 2

    # Get second Friday after the above
    observed_date = second_friday(observed_date)

    { actual_at: actual_date, observed_at: observed_date }
  end

  # Calculates second Friday after given date
  def second_friday(date)
    # Get weekday on given date and calculate offset to next Friday
    offset = (5 - date.wday) % 7
    next_friday = (date + offset)
    next_friday += 7 if offset == 0 # If given day is already a Friday, get the next one

    next_friday += 7
    next_friday
  end
end
