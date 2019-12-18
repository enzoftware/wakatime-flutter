import 'package:meta/meta.dart';

abstract class UserRepository {
  
  Future<String> authenticate({
    @required String username,
    @required String password,
  });

  Future<void> deleteToken();

  Future<void> persistToken(String token);

  Future<bool> hasToken();
}