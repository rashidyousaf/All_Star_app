class MessageModel {
  late String toId;
  late String msg;
  late String read;
  late String fromId;
  late String send;
  late final Type type;

  MessageModel(
      {required this.toId,
      required this.msg,
      required this.read,
      required this.type,
      required this.fromId,
      required this.send});

  MessageModel.fromJson(Map<String, dynamic> json) {
    toId = json['toId'].toString();
    msg = json['msg'].toString();
    read = json['read'].toString();
    type = json['type'].toString() == Type.image.name ? Type.image : Type.text;
    fromId = json['fromId'].toString();
    send = json['send'].toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['toId'] = toId;
    data['msg'] = msg;
    data['read'] = read;
    data['type'] = type;
    data['fromId'] = fromId;
    data['send'] = send;
    return data;
  }
}

enum Type { text, image }
