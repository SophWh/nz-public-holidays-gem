class TaranakiAnniversary < NzPublicHolidaysGem::Services::PublicHoliday
  private

  # Observed on the second Monday of March
  def calculate
    actual_date = DateTime.new(year, 3, 31)
    observed_date = nth_occurrence_of_monday_in_month(2, 3)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
