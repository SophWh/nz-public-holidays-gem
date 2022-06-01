class ChristmasDay < PublicHoliday
  private

  def calculate
    actual_date = DateTime.new(year, 12, 25)
    observed_date = if actual_date.saturday?
                      actual_date + 2
                    elsif actual_date.sunday?
                      actual_date + 2 # Boxing day in on Monday, so this is pushed to Tuesday
                    else
                      actual_date
                    end

    { actual_at: actual_date, observed_at: observed_date }
  end
end
