import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola Eduardo, tudo bem!', fromWho: FromWho.me),
    Message(text: 'Já tem agenda para a regulação', fromWho: FromWho.me)
  ];

  Future<void> sendMensage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
  }
}
