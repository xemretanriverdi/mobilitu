/*
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class FirebaseService {
  static const String FIREBASE_URL =
      "https://itumobile-426b5-default-rtdb.firebaseio.com/";
  Future<List><User>> getUsers() async {
    final response = await http.get(FIREBASE_URL);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonModel = json.decode(response.body);
        final userList = jsonModel as List<User>;

        break;
      default:
    }
  }
}

*/
