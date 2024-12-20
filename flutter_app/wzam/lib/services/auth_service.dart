import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wzam/services/secure_storage.dart';

class AuthService {
  final SecureStorage _secureStorage = Get.put(SecureStorage());

  Future<String> getUsername() async => await _secureStorage.getUsername();
  Future<String> getPassword() async => await _secureStorage.getPassword();
  Future<String?> getKeycloakEndpoint() async => await _secureStorage.getKeycloakEndpoint();
  Future<String?> getCimmsBroker() async => await _secureStorage.getCimmsBroker();
  Future<String?> getRealm() async => await _secureStorage.getRealm();
  Future<String?> getClient() async => await _secureStorage.getClient();
  Future<String?> getAccessToken() async => await _secureStorage.getAccessToken();
  Future<String?> getRefreshToken() async => await _secureStorage.getRefreshToken();

  Future setUsername(String username) async => await _secureStorage.setUsername(username);
  Future setPassword(String password) async => await _secureStorage.setPassword(password);
  Future setKeycloakEndpoint(String keycloakEndpoint) async =>
      await _secureStorage.setKeycloakEndpoint(keycloakEndpoint);
  Future setCimmsBroker(String cimmsBroker) async => await _secureStorage.setCimmsBroker(cimmsBroker);
  Future setRealm(String realm) async => await _secureStorage.setRealm(realm);
  Future setClient(String client) async => await _secureStorage.setClient(client);
  Future setAccessToken(String accessToken) async => await _secureStorage.setAccessToken(accessToken);
  Future setRefreshToken(String refreshToken) async => await _secureStorage.setRefreshToken(refreshToken);

  loadSecureStorageData() async {
    await _secureStorage.loadSecureStorageData();
  }

  Future clear() async {
    await _secureStorage.clear();
  }

  Future clearProfile() async { 
    await _secureStorage.clearProfiles();
  }

  Future<int> authenticateUser(String username, String password, String keycloakEndpoint, String realm, String client, String clientSecret) async {
    try {
      var res = await http.post(getKeycloakAuthEndpoint(keycloakEndpoint, realm), headers: {
        "Content-Type": "application/x-www-form-urlencoded"
      }, body: {
        "username": username,
        "password": password,
        "client_id": client,
        "client_secret": clientSecret,
        "grant_type": "password"
      }).timeout(
        const Duration(seconds: 5),
        onTimeout: () => http.Response('Timeout', 408),
      );

      switch (res.statusCode) {
        case 200:
          var data = jsonDecode(res.body);
          await _secureStorage.setAccessToken(data['access_token']);
          await _secureStorage.setRefreshToken(data['refresh_token']);
          return res.statusCode;
        default:
          debugPrint(
              "An Error Occurred while logging in. Status code: ${res.statusCode} , body: ${res.body.toString()}");
          return res.statusCode;
      }
    } on SocketException catch (_) {
      return 408;
    }
  }

  Uri getKeycloakAuthEndpoint(String keycloakEndpoint, String keycloakRealm) {
    var url = Uri.parse('${keycloakEndpoint}realms/$keycloakRealm/protocol/openid-connect/token');
    return url;
  }

  Future<int> logoutUser() async {
    String keycloakEndpoint = await _secureStorage.getKeycloakEndpoint();
    String realm = await _secureStorage.getRealm();
    String client = await _secureStorage.getClient();
    String clientSecret = await _secureStorage.getClientSecret();
    try {
      var url = Uri.parse(
          '${keycloakEndpoint}realms/${realm}/protocol/openid-connect/logout?redirect_uri=${keycloakEndpoint}'); //once working, see if redirect is necessary
      var res = await http.post(url, headers: {
        "Content-Type": "application/x-www-form-urlencoded"
      }, body: {
        "client_id": client,
        "client_secret": clientSecret,
        "refresh_token": await getRefreshToken(),
      }).timeout(
        const Duration(seconds: 5),
        onTimeout: () => http.Response('Timeout', 408),
      );

      switch (res.statusCode) {
        case 204:
          print("Logged out successfully");
          return res.statusCode;
        default:
          debugPrint(
              "An Error Occurred while logging out. Status code: ${res.statusCode} , body: ${res.body.toString()}");
          return res.statusCode;
      }
    } on SocketException catch (_) {
      return 408;
    }
  }
}
