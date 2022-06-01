class OtagoAnniversary < PublicHoliday
  private

  # Observed on Monday closest to the 23rd March
  def calculate
    actual_date = DateTime.new(year, 3, 23)
    observed_date = nearest_monday(actual_date)

    { actual_at: actual_date, observed_at: observed_date }
  end
end
