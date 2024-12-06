import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/masakan.dart';

class MasakanProvider {
  Future<Map<String, dynamic>> getDataMakanan() async {
    try {
      Uri url =
          Uri.parse("https://masakapahariini-api.vercel.app/api/v1/recipes");
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
        "message": "Berhasil get data makanan",
        "data": MasakanModel.fromJson(body),
      };
    } catch (e) {
      return {
        "error": false,
        "message": "$e",
      };
    }
  }
}
