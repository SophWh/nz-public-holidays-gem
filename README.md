# NZ Public Holidays Gem

A Ruby gem that provides a collection of service classes that calculate the actual and observed dates of each New Zealand public holiday.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nz_public_holidays'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nz_public_holidays

## Usage
Initialize the class corresponding to the desired holiday with the target year, and execute #call. DateTime objects representing the actual and observed dates will be calculated and returned.

Examples:

```ruby
GoodFriday.new(2022).call
# => {:actual_at=>#<DateTime: 2022-04-15T00:00:00+00:00 ((2459685j,0s,0n),+0s,2299161j)>, :observed_at=>#<DateTime: 2022-04-15T00:00:00+00:00 ((2459685j,0s,0n),+0s,2299161j)>}

AnzacDay.new(2025).call
# => {:actual_at=>#<DateTime: 2025-04-25T00:00:00+00:00 ((2460791j,0s,0n),+0s,2299161j)>, :observed_at=>#<DateTime: 2025-04-25T00:00:00+00:00 ((2460791j,0s,0n),+0s,2299161j)>}
```

Available Public Holidays:
- AnzacDay
- AucklandAnniversary
- BoxingDay
- CanterburyAnniversary
- ChathamIslandsAnniversary
- ChristmasDay
- EasterMonday
- EasterSunday
- FetchHoliday
- GoodFriday
- HawkesBayAnniversary
- JanuarySecond
- LabourDay
- MarlboroughAnniversary
- Matariki (dates available up to 2052)
- NelsonAnniversary
- NewYearsDay
- OtagoAnniversary
- QueensBirthday
- SouthCanterburyAnniversary
- SouthlandAnniversary
- TaranakiAnniversary
- WaitangiDay
- WellingtonAnniversary
- WestlandAnniversary

You can also return all public holidays for the specified years using the following:
```ruby
FetchHoliday.fetch_holidays(start_year, end_year)
```
Data is returned in the following format:
```
 [
    {
        :holiday_name=>"",
        :actual_at=><DateTime>,
        :observed_at=><DateTime>,
        :holiday_type=>"",
        :updated_at=><DateTime>,
        :created_at=><DateTime>
    },
  ...
  ]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SophWh/nz-public-holidays-gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/nz-public-holidays-gem/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nz::Public::Holidays::Gem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nz-public-holidays-gem/blob/master/CODE_OF_CONDUCT.md).
