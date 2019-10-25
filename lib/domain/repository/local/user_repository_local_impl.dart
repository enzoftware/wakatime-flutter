

import 'package:wakatime_client/domain/repository/user_repository.dart';

class UserLocalRepository extends UserRepository {
  @override
  Future<String> authenticate({String username, String password}) async {
    print("LOCAL AUTH");
    await Future.delayed(Duration(seconds: 1));
    return 'token';
  }

  @override
  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  @override
  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }

  @override
  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }
}
