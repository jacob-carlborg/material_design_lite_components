# Material Design Lite Components

This library contains a set of Ruby on Rails helpers for
[Material Design Lite](https://getmdl.io)(MDL) components.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'material_design_lite_components'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install material_design_lite_components
```

It's expected that the MDL stylesheets and JavaScript are already installed.

## Usage

### `mdl_button_to`

```erb
<%= mdl_button_to "example", "example.com" %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and the created tag, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/jacob-carlborg/material_design_lite_components.
