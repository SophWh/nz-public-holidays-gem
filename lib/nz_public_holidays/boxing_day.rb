class BoxingDay < PublicHoliday
  private

  def calculate
    actual_date = Time.zone.local(year, 12, 26)
    observed_date = if actual_date.saturday?
                      actual_date + 2.days
                    elsif actual_date.sunday?
                      actual_date + 2.days # Christmas day will be on Saturday, so will be moved to Monday
                    else
                      actual_date
                    end

    { actual_at: actual_date, observed_at: observed_date }
  end
end
