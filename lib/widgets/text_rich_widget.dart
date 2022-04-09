import 'package:flutter/material.dart';

class TextRichWidget extends StatelessWidget {
  final String titulo;
  final String descripcion;
  const TextRichWidget(
      {required this.titulo, required this.descripcion, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: titulo,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: descripcion),
        ],
      ),
    );
  }
}
