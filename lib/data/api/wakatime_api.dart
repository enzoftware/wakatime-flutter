import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:wakatime_client/data/model/user.dart';
import 'package:http/http.dart' as http;

class WakaTimeApi {
  final String _baseUrl = "https://wakatime.com/api/v1";
  final String _userInfoUrl = "/users/current";
  final String _userJsonKey = "data";

  Future<User> getUserInformation() async {
    final response = await http.get(
      _baseUrl+_userInfoUrl,
      headers: {
        HttpHeaders.authorizationHeader : "Basic ZjU2NzFjN2UtOTliMi00NjBkLWI0YTYtMDUzNzU1NjZjMDlj" // HERE GOES YOUR API-KEY
      }
    );
    final responseJson = json.decode(response.body);
    return _convert(responseJson[_userJsonKey]);
  }

  User _convert(Map userJson) {
    return User.fromJson(userJson);
  }

}