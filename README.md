# Brightguide

Generate an automatic css styleguide by adding markdown comments to you're css or scss files.

## Getting started
Add the gem to you're Gemfile:

```ruby
gem "brightguide", github: "brighin/brightguide"
```

And mount the engine in you're routes.rb:

```ruby
mount Brightguide::Engine => "/styleguide"
```

The styleguide is now available under `/styleguide`. It searches css files in `app/assets/stylesheets` with comments starting with `doc`. For example, if you have a `.btn` css class, you can add a comment and it will automatically be visible in the styleguide!
```css
/* doc

Default button

    <div class="btn" />
*/

.btn {}
```

## Configuration
The default configuration is probably fine, but if you're using different different paths

```ruby
Brightguide.setup do |config|
  config.stylesheet_location = "application" # default
  config.stylesheets_path = "app/assets/stylesheets" # default
end
```
