import 'package:wakatime_client/data/model/user.dart';

class UserResponse {
  final User user;

  UserResponse.fromJson(Map jsonMap):
      user = User.fromJson(jsonMap['data']) {
    assert(user != null);
  }
}