# frozen_string_literal: true

require_relative "nz_public_holidays_gem/version"
Dir[File.join(__dir__, 'nz_public_holidays_gem/services', '*.rb')].each { |file| require file }

module NzPublicHolidaysGem
    class Error < StandardError; end
    # Your code goes here...
end
