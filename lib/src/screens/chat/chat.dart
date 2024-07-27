import 'package:flutter/material.dart';
import 'package:yes_no/widgets/chat/my_message_bubble.dart';
import 'package:yes_no/widgets/chat/other_message_bubble.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const OtherMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
