class ChathamIslandsAnniversary < NzPublicHolidaysGem::Services::PublicHoliday
  private

  # Observed on Monday closest to the 30th November
  def calculate
    actual_date = DateTime.new(year, 11, 30)
    observed_date = nearest_monday(actual_date)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
