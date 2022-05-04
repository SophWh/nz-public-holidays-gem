require_relative "../support/holiday_helper.rb"
require_relative "../support/holiday_service.rb"

HolidayHelper.fetch_services.each do |service|
  RSpec.describe service, type: :service do
    describe ".call" do
      it_behaves_like "a holiday service", HolidayHelper.fetch_test_data(service)
    end
  end
end