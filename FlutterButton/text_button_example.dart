import 'package:flutter/material.dart';

class TextButtonExample extends StatefulWidget {
  const TextButtonExample({super.key});

  @override
  State<TextButtonExample> createState() => _TextButtonExampleState();
}

class _TextButtonExampleState extends State<TextButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: (){}, child: Text("I'm an text button")),
      ],
    );
  }
}