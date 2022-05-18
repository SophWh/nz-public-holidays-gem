require_relative "./easter_sunday"

class EasterMonday < EasterSunday
  def call
    easter_sunday = super
    easter_sunday.transform_values { |date| date + 1.day }
  end
end
