import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/configs/custom_themes.dart';
import 'package:yes_no/presentation/providers/chat_provider.dart';
import 'package:yes_no/presentation/src/screens/chat/chat.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme: CustomThemes(chosenColor: 5).theme(),
        home: const Chat(),
      ),
    );
  }
}
