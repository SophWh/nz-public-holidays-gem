class WaitangiDay < PublicHoliday
  private

  def calculate
    actual_date = Time.zone.local(year, 2, 6)
    observed_date = if actual_date.saturday?
                      actual_date + 2.days
                    elsif actual_date.sunday?
                      actual_date + 1.day
                    else
                      actual_date
                    end

    { actual_at: actual_date, observed_at: observed_date }
  end
end
