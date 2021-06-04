abstract class ContactEvent {}

class ContactList extends ContactEvent {
  final Map<String, String>? body;
  final ars;

  ContactList({this.body, this.ars});
}

