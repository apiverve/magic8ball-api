# Magic 8-Ball API - Ruby Gem

Magic 8-Ball is a fun tool that provides random predictions and answers like the classic toy. It returns one of 20 classic Magic 8-Ball responses categorized as affirmative, negative, or non-committal.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_magic8ball'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_magic8ball
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_magic8ball'

# Initialize the client
client = APIVerve::Magic8ball::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ question: "Will it rain today?" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ question: "Will it rain today?" })
  puts response["data"]
rescue APIVerve::Magic8ball::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Magic8ball::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Magic8ball::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "question": "Will it rain today?",
    "answer": "Signs point to yes",
    "type": "affirmative",
    "certainty": "medium",
    "shake_count": 3,
    "timestamp": "2025-12-16T22:25:52.008Z"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/magic8ball?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/magic8ball?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/magic8ball?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
