# Fundsrb [![Gem Version](https://badge.fury.io/rb/fundsrb.svg)](https://badge.fury.io/rb/fundsrb)

A Ruby library to query the fundsexplorer.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fundsrb'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fundsrb

## Usage

```ruby
require 'fundsrb'

client = Fundsrb::Client.new
client.quotes('BIDI4')

{
  :liquidity=>"7.828",
  :dividend=>"R$ 0,59",
  :yield=>"0,53%",
  :patrimony=>"R$ 94,66",
  :pvp=>"1,17",
  :name=>"ALIANZA TRUST RENDA IMOBILIARIA FDO INV IMOB",
  :cnpj=>"28.737.771/0001-85",
  :segment=>"Logistica"
}
```
## Thanks

Thanks to the [fundsexplorer](https://www.fundsexplorer.com.br) team for build this awesome app.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hamorim/fundsrb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hamorim/fundsrb/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Fundsrb project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hamorim/fundsrb/blob/master/CODE_OF_CONDUCT.md).
