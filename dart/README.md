# Magic 8-Ball API - Dart/Flutter Client

Magic 8-Ball is a fun tool that provides random predictions and answers like the classic toy. It returns one of 20 classic Magic 8-Ball responses categorized as affirmative, negative, or non-committal.

[![pub package](https://img.shields.io/pub/v/apiverve_magic8ball.svg)](https://pub.dev/packages/apiverve_magic8ball)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Magic 8-Ball API](https://apiverve.com/marketplace/magic8ball?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_magic8ball: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_magic8ball/apiverve_magic8ball.dart';

void main() async {
  final client = Magic8ballClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'question': 'Will it rain today?'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Magic 8-Ball API](https://apiverve.com/marketplace/magic8ball?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/magic8ball](https://docs.apiverve.com/ref/magic8ball?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
