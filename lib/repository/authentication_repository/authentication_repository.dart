import 'dart:async';

enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
}

class AuthenticationRepository {
  final _statusController = StreamController<AuthenticationStatus>();
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _statusController.stream;
  }

  Future<void> logIn(
      {required String userName, required String password}) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _statusController.add(AuthenticationStatus.authenticated),
    );
  }

  void logOut() => _statusController.add(AuthenticationStatus.unauthenticated);

  void dispose() => _statusController.close();
}
