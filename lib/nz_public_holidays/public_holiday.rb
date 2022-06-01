# frozen_string_literal: true

require 'date'

# PublicHoliday
class PublicHoliday
  def initialize(year)
    @year = year
  end

  attr_reader :year

  def call
    calculate
  end

  private

  def calculate; end

  # Common helper methods

  # Gets nth occurrence of monday in the given Monday
  def nth_occurrence_of_monday_in_month(occurrence_number, month)
    # Get weekday on 1st of month and calculate offset to next Monday
    offset = (8 - DateTime.new(year, month, 1).wday) % 7
    # Apply offset to get first Monday of month
    first_monday = (DateTime.new(year, month, 1) + offset)
    # Add n-1 weeks to get nth Monday of March
    first_monday += (occurrence_number - 1) * 7 # rubocop:disable Lint/UselessAssignment
  end

  # Calculates closest Monday, before or after current date
  def nearest_monday(date)
    days_to_past_monday = date.wday.zero? ? 6 : date.wday - 1
    nearest_monday = date - days_to_past_monday
    nearest_monday += 7 if date.wday > 4 || date.wday.zero?

    nearest_monday
  end
end
