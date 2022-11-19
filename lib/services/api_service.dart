import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product.dart';

class ApiSErvices {
  Future<List<User>> fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return [
        for (final infJson in jsonDecode(response.body) as List)
          User.fromJson(infJson)
      ];
    } else {
      throw "Something is wrong";
    }
  }
}
