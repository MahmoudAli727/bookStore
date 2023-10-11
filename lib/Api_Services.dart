// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'dart:convert';

import 'package:book_store_app/Home/models/book_model.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Api_Service {
  String baseUrl =
      'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest&q=programming';

  Future<List<book_model>> getData() async {
    Uri url = Uri.parse(baseUrl);
    http.Response response = await http.get(url);

    if (response.statusCode == 400) {
      var data = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    var data = jsonDecode(response.body);

    List<book_model> Booklist = [];
    for (int i = 0; i < data["items"].length; i++) {
      Booklist.add(book_model.fromJson(data["items"][i]));
    }
    return Booklist;
  }
}
