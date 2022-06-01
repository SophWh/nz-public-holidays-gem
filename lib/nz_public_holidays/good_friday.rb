require_relative "./easter_sunday"

class GoodFriday < EasterSunday
  def call
    easter_sunday = super
    easter_sunday.transform_values { |date| date - 2 }
  end
end
