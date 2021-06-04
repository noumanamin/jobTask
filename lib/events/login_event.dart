abstract class LoginEvent{}

class LoginWithEmail extends LoginEvent{
  final Map<String,String>? body;

  LoginWithEmail({this.body});
}

