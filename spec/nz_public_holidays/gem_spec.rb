# frozen_string_literal: true

require 'spec_helper'

RSpec.describe NzPublicHoliday::Gem do
  it 'has a version number' do
    expect(NzPublicHoliday::Gem::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end
