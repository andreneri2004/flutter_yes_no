import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme; //Pega a configuração do tema

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Other mensage',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // pega o tamanho do dispositivo

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          width: size.width * 0.7, // 70%
          height: 150,
          fit: BoxFit.cover,
          "https://yesno.wtf/assets/no/5-73e4adfe4da265a646fe517128bb5bf2.gif"),
    );
  }
}
