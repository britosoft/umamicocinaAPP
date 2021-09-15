import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:umamicocina/global/environment.dart';
import 'package:umamicocina/models/login_response.dart';
import 'package:umamicocina/models/usuario.dart';
//import 'api_providers.dart';

class AuthService with ChangeNotifier {
  Usuario? usuario;
  //bool _autenticando = false;
  //bool get autenticando => this.autenticando;
  //set autenticando(bool valor) {
  // this._autenticando = valor;
  // notifyListeners();
  // }

  Future login(String email, String password) async {
    // ApiProvider _apiProvider = ApiProvider();
    //this.autenticando = true;
    final data = {'email': email, 'password': password};
    //final response = await _apiProvider.postRequestWithStatusCode(
    // ApiProvider.uriAPI, "/login", data);

    final uri = Uri.parse('${Environment.apiUrl}/login');

    final resp = await http.post(uri,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    print(resp.body);

    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      print(loginResponse);
      this.usuario = loginResponse.usuario;
    }
  }

  loginResponseFromJson(String body) {}
}

//class EAuth{
  //final bool ok;´
  //final String msg
//}
