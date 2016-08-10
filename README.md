# middleman-google-tag-manager

A [Middleman](https://middlemanapp.com) extension for use with [Google Tag Manager](https://www.google.com/analytics/tag-manager/).

__Features__

* Automatically places Google Tag Manager code on all configured pages.

## Installation

```ruby
  gem 'middleman-google-tag-manager', '< 1'
```

* Use `middleman-google-tag-manager` version `~> 1` for Middleman 4+
* Use `middleman-google-tag-manager` version `< 1` for Middleman 3.x

## Setup and Configuration

In `config.rb`

```ruby
activate :google_tag_manager do |gtm|
  gtm.container_id = 'your Google Tag Manager container ID' # required
  gtm.development = true # Render tag in development environment
end
```

## Helper and Usage

Examples for ERB templates:

```ruby
<%= google_tag_manager %>
# e.g. use in layout.erb
```

## See also

* Google Analytics https://github.com/danielbayerlein/middleman-google-analytics - (several ideas taken from here :)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
