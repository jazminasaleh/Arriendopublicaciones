import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//*Para distrubir la informacion
class AuthService extends ChangeNotifier {
  final String _baseUrl = 'identitytoolkit.googleapis.com';
  final String _firebaseToken = 'AIzaSyDr-SySwAGUap4T90lh_oEj3TYismqY6xs';
//Crear un nuevo usuario
  Future<String?> createUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url =
        Uri.https(_baseUrl, '/v1/accounts:signUp', {'key': _firebaseToken});

    final resp = await http.post(url, body: json.encode(authData));
    print('respuesta $resp');
    final Map<String, dynamic> decodedResp = json.decode(resp.body);
    if (decodedResp.containsKey('idToken')) {
      print(decodedResp);
      return null;
    } else {
      return decodedResp['error']['message'];
    }
  }

  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url =
        Uri.https(_baseUrl, '/v1/accounts:signInWithPassword', {'key': _firebaseToken});

    final resp = await http.post(url, body: json.encode(authData));
    print('respuesta $resp');
    final Map<String, dynamic> decodedResp = json.decode(resp.body);
    if (decodedResp.containsKey('idToken')) {
      print(decodedResp);
      return null;
    } else {
      return decodedResp['error']['message'];
    }
  }
}
