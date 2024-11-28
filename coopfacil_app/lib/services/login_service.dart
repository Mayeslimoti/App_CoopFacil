import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/cliente.dart';

class LoginService {
  static const String apiUrl = 'https://tu-api.com/api/login';

  static Future<Cliente?> authenticate(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'clienteLogin': username, 'clave': password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return Cliente.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
