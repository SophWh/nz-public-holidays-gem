class WestlandAnniversary < PublicHoliday
  private

  # Observed on Monday closest to the 1st December
  def calculate
    actual_date = Time.zone.local(year, 12, 1)
    observed_date = nearest_monday(actual_date)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
