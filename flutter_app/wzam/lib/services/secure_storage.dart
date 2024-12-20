//import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const _storage = FlutterSecureStorage();

  static const _keyUsername = 'username';
  static const _keyPassword = 'password';
  static const _keyKeycloakEndpoint = 'keycloakEndpoint';
  static const _keyCimmsBroker = 'cimmsBroker';
  static const _keyRealm = 'realm';
  static const _keyClient = 'client';
  static const _clientSecret = 'clientSecret';
  static const _keyAccessToken = 'accessToken';
  static const _keyRefreshToken = 'refreshToken';
  static const _keyProfiles = 'profiles';
  static const _keyCurrentProfile = 'currentProfile';

  /*static const startKeycloakEndpoint = 'https://test-kc.cv.codot.gov/';
  static const startCimmsBroker = 'https://test-kc.cv.codot.gov/';
  static const startRealm = 'conflictvisualizer';
  static const startClient = 'conflictvisualizer-gui';
  static const startClientSecret = 'IjNjQL2Y4aO82kFrOaPX55WmJyHW59e3';*/

  static String startKeycloakEndpoint = dotenv.env['START_KEYCLOAK_ENDPOINT']!;
  static String startCimmsBroker = dotenv.env['START_CIMMS_BROKER']!;
  static String startRealm = dotenv.env['START_REALM']!;
  static String startClient = dotenv.env['START_CLIENT']!;
  static String startClientSecret = dotenv.env['START_CLIENT_SECRET']!;

  Future<String> getUsername() async => await _storage.read(key: _keyUsername) ?? '';
  Future<String> getPassword() async => await _storage.read(key: _keyPassword) ?? '';
  Future<String> getKeycloakEndpoint() async => await _storage.read(key: _keyKeycloakEndpoint) ?? startKeycloakEndpoint;
  Future<String> getCimmsBroker() async => await _storage.read(key: _keyCimmsBroker) ?? startCimmsBroker;
  Future<String> getRealm() async => await _storage.read(key: _keyRealm) ?? startRealm;
  Future<String> getClient() async => await _storage.read(key: _keyClient) ?? startClient;
  Future<String> getClientSecret() async => await _storage.read(key: _clientSecret) ?? startClientSecret;
  Future<String?> getAccessToken() async => await _storage.read(key: _keyAccessToken);
  Future<String?> getRefreshToken() async => await _storage.read(key: _keyRefreshToken);


  Future setUsername(String username) async => await _storage.write(key: _keyUsername, value: username);
  Future setPassword(String password) async => await _storage.write(key: _keyPassword, value: password);
  Future setKeycloakEndpoint(String keycloakEndpoint) async =>
      await _storage.write(key: _keyKeycloakEndpoint, value: keycloakEndpoint);
  Future setCimmsBroker(String cimmsBroker) async => await _storage.write(key: _keyCimmsBroker, value: cimmsBroker);
  Future setRealm(String realm) async => await _storage.write(key: _keyRealm, value: realm);
  Future setClient(String client) async => await _storage.write(key: _keyClient, value: client);
  Future setClientSecret(String clientSecret) async => await _storage.write(key: _clientSecret, value: clientSecret);
  Future setAccessToken(String accessToken) async => await _storage.write(key: _keyAccessToken, value: accessToken);
  Future setRefreshToken(String refreshToken) async => await _storage.write(key: _keyRefreshToken, value: refreshToken);

  Future loadSecureStorageData() async {
    if (await _storage.read(key: _keyUsername) == null) {
      await setUsername('');
    }
    if (await _storage.read(key: _keyPassword) == null) {
      await setPassword('');
    }
    if (await _storage.read(key: _keyKeycloakEndpoint) == null) {
      await setKeycloakEndpoint(startKeycloakEndpoint);
    }
    if (await _storage.read(key: _keyCimmsBroker) == null) {
      await setCimmsBroker(startCimmsBroker);
    }
    if (await _storage.read(key: _keyRealm) == null) {
      await setRealm(startRealm);
    }
    if (await _storage.read(key: _keyClient) == null) {
      await setClient(startClient);
    }
    if (await _storage.read(key: _clientSecret) == null) {
      await setClientSecret(startClientSecret);
    }
  }

  Future clear() async {
    await _storage.delete(key: _keyUsername);
    await _storage.delete(key: _keyPassword);
    await _storage.delete(key: _keyKeycloakEndpoint);
    await _storage.delete(key: _keyCimmsBroker);
    await _storage.delete(key: _keyRealm);
    await _storage.delete(key: _keyClient);
    await _storage.delete(key: _clientSecret);
    await _storage.delete(key: _keyCurrentProfile);
  }

  Future clearProfiles() async { 
    await _storage.delete(key: _keyProfiles);
    await _storage.delete(key: _keyCurrentProfile);
  }
}
