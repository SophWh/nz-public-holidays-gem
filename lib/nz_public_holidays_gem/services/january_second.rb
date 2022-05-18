class JanuarySecond < NzPublicHolidaysGem::Services::PublicHoliday
  private

  def calculate
    actual_date = DateTime.new(year, 1, 2)
    observed_date = if actual_date.saturday?
                      actual_date + 2
                    elsif actual_date.sunday?
                      actual_date + 2 # New Year's Day will be on Saturday, so will be moved to Monday
                    else
                      actual_date
                    end

    { actual_at: actual_date, observed_at: observed_date }
  end
end
