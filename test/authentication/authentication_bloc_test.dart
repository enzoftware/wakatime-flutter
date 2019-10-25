import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wakatime_client/authentication/authentication.dart';
import 'package:wakatime_client/domain/repository/local/user_repository_local_impl.dart';

class MockUserRepository extends Mock implements UserLocalRepository {}

void main() {
  AuthenticationBloc authenticationBloc;
  MockUserRepository userRepository;

  setUp(() {
    userRepository = MockUserRepository();
    authenticationBloc = AuthenticationBloc(repository: userRepository);
  });

  test('initial state is correct', () {
    expect(authenticationBloc.initialState, AuthenticationStateUninitialized());
  });

  test('dispose does not emit new states', () {
    expectLater(
      authenticationBloc.state,
      emitsInOrder([AuthenticationStateUninitialized(), emitsDone]),
    );
    authenticationBloc.dispose();
  });

  group('AppStarted', () {
    test('emits [uninitialized, unauthenticated] for invalid token', () {
      final expectedResponse = [
        AuthenticationStateUninitialized(),
        AuthenticationStateUnauthenticated()
      ];

      when(userRepository.hasToken()).thenAnswer((_) => Future.value(false));

      expectLater(
        authenticationBloc.state,
        emitsInOrder(expectedResponse),
      );

      authenticationBloc.dispatch(AppStarted());
    });
  });

  group('LoggedIn', () {
    test(
        'emits [uninitialized, loading, authenticated] when token is persisted',
            () {
          final expectedResponse = [
            AuthenticationStateUninitialized(),
            AuthenticationStateLoading(),
            AuthenticationStateAuthenticated(),
          ];

          expectLater(
            authenticationBloc.state,
            emitsInOrder(expectedResponse),
          );

          authenticationBloc.dispatch(LoggedIn(
            token: 'instance.token',
          ));
        });
  });

  group('LoggedOut', () {
    test(
        'emits [uninitialized, loading, unauthenticated] when token is deleted',
            () {
          final expectedResponse = [
            AuthenticationStateUninitialized(),
            AuthenticationStateLoading(),
            AuthenticationStateUnauthenticated(),
          ];

          expectLater(
            authenticationBloc.state,
            emitsInOrder(expectedResponse),
          );

          authenticationBloc.dispatch(LoggedOut());
        });
  });
}