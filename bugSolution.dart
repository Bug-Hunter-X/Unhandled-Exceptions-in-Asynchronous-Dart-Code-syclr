```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } catch (jsonError) {
        print('Error decoding JSON: $jsonError');
        return null; // Or throw a custom exception
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null; // Or throw a custom exception
    }
  } catch (e) {
    print('Error fetching data: $e');
    return null; // Or throw a custom exception
  }
}
```