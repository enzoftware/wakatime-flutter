import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wakatime_client/features/authentication/authentication_event.dart';
import 'package:wakatime_client/features/authentication/authentication_state.dart';
import 'package:wakatime_client/domain/repository/user_repository.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository repository;

  AuthenticationBloc({@required this.repository}) : assert(repository != null);

  @override
  AuthenticationState get initialState => AuthenticationStateUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event) async* {

    if (event is AppStarted) {
      final bool hasToken = await repository.hasToken();
      if (hasToken) {
        yield AuthenticationStateAuthenticated();
      } else {
        yield AuthenticationStateUnauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield AuthenticationStateLoading();
      await repository.persistToken(event.token);
      yield AuthenticationStateAuthenticated();
    }

    if (event is LoggedOut) {
      yield AuthenticationStateLoading();
      await repository.deleteToken();
      yield AuthenticationStateUnauthenticated();
    }
  }
}
