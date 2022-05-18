require 'spec_helper'

module HolidayHelper # rubocop:disable Metrics/ModuleLength
  module_function

  KNOWN_YEARS    = %w[2022 2023].map(&:to_i)
  KNOWN_HOLIDAYS = [
    {
      GoodFriday:
      {
        klass: GoodFriday,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-04-15 2023-04-07],
        observed_dates: %w[2022-04-15 2023-04-07]
      },
      EasterSunday:
      {
        klass: EasterSunday,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-04-17 2023-04-09],
        observed_dates: %w[2022-04-17 2023-04-09]
      },
      EasterMonday:
      {
        klass: EasterMonday,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-04-18 2023-04-10],
        observed_dates: %w[2022-04-18 2023-04-10]
      },
      WaitangiDay:
      {
        klass: WaitangiDay,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-02-06 2023-02-06],
        observed_dates: %w[2022-02-07 2023-02-06]
      },
      AnzacDay:
      {
        klass: AnzacDay,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-04-25 2023-04-25],
        observed_dates: %w[2022-04-25 2023-04-25]
      },
      QueensBirthday:
      {
        klass: QueensBirthday,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-06-06 2023-06-05],
        observed_dates: %w[2022-06-06 2023-06-05]
      },
      LabourDay:
      {
        klass: LabourDay,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-10-24 2023-10-23],
        observed_dates: %w[2022-10-24 2023-10-23]
      },
      ChristmasDay:
      {
        klass: ChristmasDay,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-12-25 2023-12-25],
        observed_dates: %w[2022-12-27 2023-12-25]
      },
      BoxingDay:
      {
        klass: BoxingDay,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-12-26 2023-12-26],
        observed_dates: %w[2022-12-26 2023-12-26]
      },
      NewYearsDay:
      {
        klass: NewYearsDay,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-01-01 2023-01-01],
        observed_dates: %w[2022-01-03 2023-01-03]
      },
      JanuarySecond:
      {
        klass: JanuarySecond,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-01-02 2023-01-02],
        observed_dates: %w[2022-01-04 2023-01-02]
      },
      AucklandAnniversary:
      {
        klass: AucklandAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-01-29 2023-01-29],
        observed_dates: %w[2022-01-31 2023-01-30]
      },
      TaranakiAnniversary:
      {
        klass: TaranakiAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-03-31 2023-03-31],
        observed_dates: %w[2022-03-14 2023-03-13]
      },
      WellingtonAnniversary:
      {
        klass: WellingtonAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-01-22 2023-01-22],
        observed_dates: %w[2022-01-24 2023-01-23]
      },
      NelsonAnniversary:
      {
        klass: NelsonAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-02-01 2023-02-01],
        observed_dates: %w[2022-01-31 2023-01-30]
      },
      ChathamIslandsAnniversary:
      {
        klass: ChathamIslandsAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-11-30 2023-11-30],
        observed_dates: %w[2022-11-28 2023-11-27]
      },
      SouthCanterburyAnniversary:
      {
        klass: SouthCanterburyAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-12-16 2023-12-16],
        observed_dates: %w[2022-09-26 2023-09-25]
      },
      OtagoAnniversary:
      {
        klass: OtagoAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-03-23 2023-03-23],
        observed_dates: %w[2022-03-21 2023-03-20]
      },
      WestlandAnniversary:
      {
        klass: WestlandAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-12-01 2023-12-01],
        observed_dates: %w[2022-11-28 2023-12-04]
      },
      SouthlandAnniversary:
      {
        klass: SouthlandAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-01-17 2023-01-17],
        observed_dates: %w[2022-04-19 2023-04-11]
      },
      MarlboroughAnniversary:
      {
        klass: MarlboroughAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-11-01 2023-11-01],
        observed_dates: %w[2022-10-31 2023-10-30]
      },
      HawkesBayAnniversary:
      {
        klass: HawkesBayAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-11-01 2023-11-01],
        observed_dates: %w[2022-10-21 2023-10-20]
      },
      CanterburyAnniversary:
      {
        klass: CanterburyAnniversary,
        known_years: KNOWN_YEARS,
        actual_dates: %w[2022-12-16 2023-12-16],
        observed_dates: %w[2022-11-11 2023-11-17]
      }
    }
  ].freeze

  TestData = Struct.new(:klass, :known_years, :actual_dates, :observed_dates, keyword_init: true)

  def fetch_test_data(klass)
    TestData.new(KNOWN_HOLIDAYS.map { |k| k[klass.name.to_sym] }.first)
  end

  def fetch_services
    KNOWN_HOLIDAYS.flat_map do |k|
      k.map do |_, v|
        v[:klass]
      end
    end
  end
end
