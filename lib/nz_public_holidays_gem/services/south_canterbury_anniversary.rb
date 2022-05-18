class SouthCanterburyAnniversary < NzPublicHolidaysGem::Services::PublicHoliday
  private

  # Observed on fourth Monday in September
  def calculate
    actual_date = DateTime.new(year, 12, 16)
    observed_date = nth_occurrence_of_monday_in_month(4, 9)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
