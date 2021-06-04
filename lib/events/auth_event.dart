abstract class AuthEvent {}

class Authenticate extends AuthEvent {
  String? body;

  Authenticate({this.body});
}

class LoggedIn extends AuthEvent {
  final String? accessToken;
  final String? refreshToken;
  final int? expiryTime;
  final String? userId;

  LoggedIn({this.accessToken, this.refreshToken, this.expiryTime, this.userId});
}

class LoggingOut extends AuthEvent {
  LoggingOut();
}

class LoggedOut extends AuthEvent {
  LoggedOut();
}
