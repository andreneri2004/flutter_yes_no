import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final textEditingController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Color.fromARGB(0, 238, 216, 216)),
        borderRadius: BorderRadius.circular(20));

    final inputDecoration = InputDecoration(
      hintText: 'Menssagem',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
          onPressed: () {
            final textValue = textEditingController.value.text;
            print(textValue);
          },
          icon: const Icon(
            Icons.send_outlined,
          )),
    );
    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(), //aperta fora para sair
      focusNode: focusNode, //manter focus
      controller: textEditingController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textEditingController.clear();
        focusNode.requestFocus(); //mater o focus
      },
      onChanged: (value) {
        print('Changed: $value');
      },
    );
  }
}
