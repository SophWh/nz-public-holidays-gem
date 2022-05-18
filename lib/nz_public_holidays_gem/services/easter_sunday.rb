class EasterSunday < NzPublicHolidaysGem::Services::PublicHoliday
  private

  # Implementation of Meeus/Jones/Butcher Gregorian algorithm, to work out Easter Sunday
  def calculate # rubocop:disable Metrics/AbcSize
    a = year % 19
    b = year / 100
    c = year % 100
    d = b / 4
    e = b % 4
    f = (b + 8) / 25
    g = (b - f + 1) / 3
    h = (19 * a + b - d - g + 15) % 30
    i = c / 4

    k = c % 4
    l = (32 + 2 * e + 2 * i - h - k) % 7
    m = (a + 11 * h + 22 * l) / 451

    month = (h + l - 7 * m + 114) / 31
    day = ((h + l - 7 * m + 114) % 31) + 1

    date = Time.zone.local(year, month, day)
    { actual_at: date, observed_at: date }
  end
end
