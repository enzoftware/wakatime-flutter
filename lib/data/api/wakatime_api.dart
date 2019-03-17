import 'dart:async';
import 'dart:convert';
import 'dart:convert' show utf8, base64;
import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:wakatime_client/data/model/user.dart';

class WakaTimeApi {
  final String _baseUrl = "https://wakatime.com/api/v1";
  final String _userInfoUrl = "/users/current";
  final String _userJsonKey = "data";
  final storage = new FlutterSecureStorage();

  Future<User> getUserInformation() async {
    try {
      final String apiKey =
      await storage.read(key: "api_key"); // GET USER API KEY
      print(apiKey);
      final response = await http.get(_baseUrl + _userInfoUrl, headers: {
        HttpHeaders.authorizationHeader:
        "Basic ${base64.encode(utf8.encode(apiKey))}" // HERE GOES YOUR API-KEY
      });
      final responseJson = json.decode(response.body);
      return _convert(responseJson[_userJsonKey]);
    } catch (e) {
      return e;
    }
  }

  User _convert(Map userJson) {
    return User.fromJson(userJson);
  }

  void saveUserInformation(String apiKey) {
    storage.write(key: "api_key", value: apiKey);
  }

  Future<String> getUserApiKey() async {
    try {
      return await storage.read(key: "api_key");
    } catch (e) {
      return e.toString();
    }
  }
}
