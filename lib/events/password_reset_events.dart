abstract class PasswordResetEvent {}

class PasswordReset extends PasswordResetEvent {
  final body;

  PasswordReset({this.body});
}
