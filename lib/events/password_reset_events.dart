abstract class PasswordResetEvent {}

class PasswordReset extends PasswordResetEvent {
  final Map<String, String>? body;

  PasswordReset({this.body});

}
