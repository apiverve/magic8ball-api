# Magic 8-Ball API - PHP Package

Magic 8-Ball is a fun tool that provides random predictions and answers like the classic toy. It returns one of 20 classic Magic 8-Ball responses categorized as affirmative, negative, or non-committal.

## Installation

Install via Composer:

```bash
composer require apiverve/magic8ball
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Magic8ball\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['question' => 'Will it rain today?']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Magic8ball\Client;
use APIVerve\Magic8ball\Exceptions\APIException;
use APIVerve\Magic8ball\Exceptions\ValidationException;

try {
    $response = $client->execute(['question' => 'Will it rain today?']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/magic8ball?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/magic8ball?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/magic8ball?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
