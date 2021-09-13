import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:umamicocina/global/environment.dart';
import 'api_providers.dart';

class AuthService with ChangeNotifier {
  Future login(String email, String password) async {
    ApiProvider _apiProvider = ApiProvider();
    final data = {'email': email, 'password': password};
    final response =
        await _apiProvider.postRequest(ApiProvider.uriAPI, "/login", data);

    final res = response;
    print(res);
  }
}

//class EAuth{
  //final bool ok;´
  //final String msg
//}
