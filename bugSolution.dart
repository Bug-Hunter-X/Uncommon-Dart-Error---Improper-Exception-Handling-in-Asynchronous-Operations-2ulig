```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData['key']);
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
      } catch (e) {
        print('Error: JSON processing error: $e');
      }
    } else {
      print('Error: API request failed. Status code: ${response.statusCode}');
    } 
  } on http.ClientException catch (e) {
    print('Error: Network error: $e');
  } catch (e) {
    print('Error: An unexpected error occurred: $e');
  }
}
```