# frozen_string_literal: true

# PublicHoliday
class AnzacDay < PublicHoliday
  private

  def calculate
    actual_date = DateTime.new(year, 4, 25)
    observed_date = if actual_date.saturday?
                      actual_date + 2
                    elsif actual_date.sunday?
                      actual_date + 1
                    else
                      actual_date
                    end

    { actual_at: actual_date, observed_at: observed_date }
  end
end
