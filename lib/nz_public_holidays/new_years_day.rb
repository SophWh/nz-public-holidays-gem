class NewYearsDay < PublicHoliday
  private

  def calculate
    actual_date = Time.zone.local(year, 1, 1)
    observed_date = if actual_date.saturday?
                      actual_date + 2.days
                    elsif actual_date.sunday?
                      actual_date + 2.days # January Second will be on a Monday, so this is pushed to Tuesday
                    else
                      actual_date
                    end

    { actual_at: actual_date, observed_at: observed_date }
  end
end
