# frozen_string_literal: true

require "nz/public/holidays/gem"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

# Dir["".join("spec", "support", "**", "*.rb")].sort.each { |f| require f } # rubocop:disable Rails/FilePath

