# Aligntext [![Gem Version](https://badge.fury.io/rb/aligntext.svg)](https://badge.fury.io/rb/aligntext)

Yet another "column" command in Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aligntext'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aligntext

## Usage

~~~
% cat sample.json
{
  "foo": "value",
  "barbar": "value",
  "bazzz": "value"
}

% cat sample.json | aligntext -s ":"
{
  "foo"   : "value",
  "barbar": "value",
  "bazzz" : "value"
}
~~~

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/myokoym/aligntext/issues.


## License

The GNU Lesser General Public License, version 3.0 or later. See LICENSE for details.

