module NzPublicHolidaysGem::Services
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
      offset = (8 - Time.zone.local(year, month, 1).wday) % 7
      # Apply offset to get first Monday of month
      first_monday = (Time.zone.local(year, month, 1) + offset.day)
      # Add n-1 weeks to get nth Monday of March
      first_monday += (occurrence_number - 1).week # rubocop:disable Lint/UselessAssignment
    end

    # Calculates closest Monday, before or after current date
    def nearest_monday(date)
      nearest_monday = date.beginning_of_week
      nearest_monday += 1.week if date.wday > 4 || date.wday == 0

      nearest_monday
    end
  end
end