abstract class RegisterEvent{

}

class RegisterUser extends RegisterEvent{
  final Map<String,String>? body;
  RegisterUser({this.body});
}