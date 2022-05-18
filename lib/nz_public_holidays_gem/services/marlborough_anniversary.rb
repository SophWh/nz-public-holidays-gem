require_relative "./labour_day"

class MarlboroughAnniversary < LabourDay
  # Observed on first Monday after Labour Day
  def call
    labour_day = super
    observed_date = next_monday(labour_day[:actual_at])
    actual_date = Time.zone.local(year, 11, 1)
    { actual_at: actual_date, observed_at: observed_date }
  end

  private

  # Calculates Monday of the next week
  def next_monday(date)
    # Get weekday on given date and calculate offset to next Monday
    offset = (8 - date.wday) % 7
    next_monday = (date + offset.day)
    next_monday += 1.week if offset == 0 # If given day is already a Monday, get the next one

    next_monday
  end
end