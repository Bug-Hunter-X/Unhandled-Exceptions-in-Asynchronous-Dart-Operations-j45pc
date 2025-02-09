```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final data = jsonDecode(response.body);
      // Process the data
    } else {
      // Handle the error appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle general exceptions
    print('Error fetching data: $e');
    //Consider rethrowing if you want the calling function to handle the exception
    //rethrow;
  }
}
```