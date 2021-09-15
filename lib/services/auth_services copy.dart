import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:umamicocina/global/environment.dart';
import 'package:umamicocina/models/login_response.dart';
import 'package:umamicocina/models/usuario.dart';
import 'api_providers.dart';

class AuthService with ChangeNotifier {
  Usuario? usuario;
  //bool _autenticando = false;
  //bool get autenticando => this.autenticando;
  //set autenticando(bool valor) {
  // this._autenticando = valor;
  // notifyListeners();
  // }

  Future login(String email, String password) async {
    ApiProvider _apiProvider = ApiProvider();
    //this.autenticando = true;
    final data = {'email': email, 'password': password};
    final response = await _apiProvider.postRequestWithStatusCode(
        ApiProvider.uriAPI, "/login", data);

    final res = response;
    print(res.body);
    if (res.statusCode == 200) {
      final loginResponse = loginResposeFromJson(res.body);
      this.usuario = loginResponse.usuario;
    }
  }
}

//class EAuth{
  //final bool ok;´
  //final String msg
//}
