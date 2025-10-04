import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatefulWidget {
  const FloatingActionButtonExample({super.key});

  @override
  State<FloatingActionButtonExample> createState() => _FloatingActionButtonExampleState();
}

class _FloatingActionButtonExampleState extends State<FloatingActionButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FloatingActionButton(onPressed: (){}, child: Text("Submit answers"),)
      ],
    );
  }
}