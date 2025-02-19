import 'package:http/http.dart' as http;
import 'dart:convert';

class PixabayApiService {
  static const String _apiKey = '48897681-33bde6a5378520e7a8eff58f7';
  static const String _baseUrl = 'https://pixabay.com/api/';

  Future<Map<String, dynamic>> fetchImages(String query) async {
    final url = '$_baseUrl?key=$_apiKey'
        '&q=${Uri.encodeComponent(query)}'
        '&image_type=photo'
        '&per_page=30'
        '&safesearch=true';

    try {
      final response = await http.get(Uri.parse(url));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data;
      } else {
        throw Exception('Failed to load images: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching images: $e');
    }
  }
}