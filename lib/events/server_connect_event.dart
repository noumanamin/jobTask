abstract class ServerConnectEvent{}

class ServerConnect extends ServerConnectEvent{
  final Map<String,String>? body;

  ServerConnect({this.body});
}
