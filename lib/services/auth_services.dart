import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:umamicocina/global/environment.dart';
import 'package:umamicocina/models/login_response.dart';
import 'package:umamicocina/models/usuario.dart';
import 'api_providers.dart';

class AuthService with ChangeNotifier {
  Usuario? usuario;
  bool _autenticando = false;
  bool get autenticando => this.autenticando;
  set autenticando(bool valor) {
    this._autenticando = valor;
    notifyListeners();
  }

  Future login(String email, String password) async {
    this.autenticando = true;
    ApiProvider _apiProvider = ApiProvider();

    final data = {'email': email, 'password': password};
    final response = await _apiProvider.postRequestWithStatusCode(
        ApiProvider.uriAPI, "/login", data);

    final resp = response;

    print(resp.body);

    loginResposeFromJson(String body) {
      if (resp.statusCode == 200) {
        final loginResponse = loginResponseFromJson(resp.body);
        this.usuario = loginResponse.usuario;
      }
    }
  }

  Future register(String nombre, String email, String password) async {
    this.autenticando = true;

    final data = {'nombre': nombre, 'email': email, 'password': password};

    final uri = Uri.parse('${Environment.apiUrl}/login/new');
    final resp = await http.post(uri,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    this.autenticando = false;

    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      this.usuario = loginResponse.usuario;

      return true;
    } else {
      final respBody = jsonDecode(resp.body);
      return respBody['msg'];
    }
  }
}
