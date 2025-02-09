```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } on FormatException {
        throw Exception('Invalid JSON format');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on http.ClientException catch (e) {
    throw Exception('Network error: $e');
  } catch (e) {
    throw Exception('An unexpected error occurred: $e');
  }
}
```