import 'package:flutter/material.dart';

class FilledButtonExample extends StatefulWidget {
  const FilledButtonExample({super.key});

  @override
  State<FilledButtonExample> createState() => _FilledButtonExampleState();
}

class _FilledButtonExampleState extends State<FilledButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilledButton(onPressed: (){}, child: Text("I'm a filled button")),
      ],
    );
  }
}