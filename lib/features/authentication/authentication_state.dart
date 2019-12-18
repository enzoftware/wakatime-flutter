import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {}

class AuthenticationStateUninitialized extends AuthenticationState {
  @override
  String toString() => 'AuthenticationUninitialized';
}

class AuthenticationStateAuthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationStateAuthenticated';
}

class AuthenticationStateUnauthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationStateUnauthenticated';
}

class AuthenticationStateLoading extends AuthenticationState {
  @override
  String toString() => 'AuthenticationStateLoading';
}
