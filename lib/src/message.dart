// An immutable container class for a single Twoot
class Message {
  // This message unique ID
  final String id;

  // Which user posted this message
  final String name;

  // The message contents itself
  final String message;

  // When the message was published, as a UNIX timestamp in seconds
  final int published;

  // The number of seconds until this message expires and is removed
  final int expires;

  // Creates a new Message, which is then immutable
  Message(this.id, this.name, this.message, this.published, this.expires);

  @override
  String toString() {
    return 'Message{id: $id, name: $name, message: $message, published: '
        '$published, expires: $expires}';
  }

  // Construct a Message object from json data
  static Message fromJSON(dynamic json) {
    String id = json['id'];
    String name = json['name'];
    String message = json['message'];
    int published = json['published'];
    int expires = json['expires'];

    return Message(id, name, message, published, expires);
  }
}
