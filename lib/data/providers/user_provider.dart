import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user.dart';

class UserProvider {
  Future<Map<String, dynamic>> getDataUser() async {
    try {
      Uri url = Uri.parse("https://reqres.in/api/users");
      var response = await http.get(url);

      if (response.statusCode != 200) {
        return {
          "error": true,
          "message": "${response.statusCode}",
        };
      }

      Map<String, dynamic> body = jsonDecode(response.body);

      return {
        "error": false,
        "message": "Berhasil get data user",
        "data": UserModel.fromJson(body),
      };
    } catch (e) {
      return {
        "error": false,
        "message": "$e",
      };
    }
  }
}
