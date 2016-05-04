# middleman-google-tag-manager

A [Middleman](https://middlemanapp.com) extension for use with [Google Tag Manager](https://www.google.com/analytics/tag-manager/).

__Features__

* Automatically places Google Tag Manager code on all configured pages.


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
