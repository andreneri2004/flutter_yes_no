import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/presentation/src/screens/chat/chat.dart
import 'package:provider/provider.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/presentation/providers/chat_provider.dart';
import 'package:yes_no/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no/presentation/widgets/chat/other_message_bubble.dart';
import 'package:yes_no/presentation/widgets/shared/message_field_box.dart';
=======
import 'package:yes_no/widgets/chat/my_message_bubble.dart';
import 'package:yes_no/widgets/chat/other_message_bubble.dart';
import 'package:yes_no/widgets/shared/message_field_box.dart';
>>>>>>> refs/remotes/origin/main:lib/src/screens/chat/chat.dart

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SRA - Atendimento'),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.ima.sc.gov.br/images/stories/chat.png'),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
<<<<<<< HEAD:lib/presentation/src/screens/chat/chat.dart
              itemCount: chatProvider.messageList.length,
=======
              itemCount: 10,
>>>>>>> refs/remotes/origin/main:lib/src/screens/chat/chat.dart
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.me)
                    ? MyMessageBubble(message: message)
                    : const OtherMessageBubble();
              },
            )),
<<<<<<< HEAD:lib/presentation/src/screens/chat/chat.dart
            MessageFieldBox(
              onValue: chatProvider.sendMensage,
            )
=======
            const MessageFieldBox()
>>>>>>> refs/remotes/origin/main:lib/src/screens/chat/chat.dart
          ],
        ),
      ),
    );
  }
}
