class AucklandAnniversary < NzPublicHolidaysGem::Services::PublicHoliday
  private

  # Observed Monday closest to the 29th January
  def calculate
    actual_date = Time.zone.local(year, 1, 29)
    observed_date = nearest_monday(actual_date)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
