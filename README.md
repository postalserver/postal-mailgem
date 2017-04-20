# Postal for the Mail Gem

This allows you to easily deliver messages through Postal using the Ruby `mail` gem.

## Installation

Add the gems to your Gemfile and run `bundle install`.

```ruby
gem 'mail'
gem 'postal-mailgem'
```

## Configuraton

You can set the delivery method globally to use Postal.

```ruby
Mail.defaults do
  delivery_method :postal, :host => 'https://postal.yourdomain.com', :server_key => 'xxx'
end
```

Or, you can configure it on a per message basis:

```ruby
message = Mail.new
message.to "invalid@pat.infra.atech.io"
message.from "blah@test.postal.io"
message.body "Hello there!"
message.delivery_method :postal, :host => 'https://postal.yourdomain.com', :server_key => 'xxx'
message.deliver
```

You don't need to specify a `server_key` or `host` if you have set the `POSTAL_KEY` and `POSTAL_HOST` environment variables.
