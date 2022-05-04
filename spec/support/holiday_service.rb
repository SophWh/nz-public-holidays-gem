RSpec.shared_examples "a holiday service" do |test_data|
  let(:date_format) { "%Y-%m-%d" }

  context "when calculating holiday dates for" do
    it test_data.klass.name.to_s do
      test_data.known_years.each do |year|
        dates       = test_data.klass.new(year).call
        actual_at   = dates[:actual_at].strftime(date_format)
        observed_at = dates[:observed_at].strftime(date_format)

        expect(test_data.observed_dates).to include(observed_at)
        expect(test_data.actual_dates).to include(actual_at)
      end
    end
  end
end
