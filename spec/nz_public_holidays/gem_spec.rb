# frozen_string_literal: true

require 'spec_helper'

RSpec.describe NewZealandPublicHoliday::Gem do
  it 'has a version number' do
    expect(NewZealandPublicHoliday::Gem::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end
