import 'package:flutter/material.dart';

class OutlinedButtonExample extends StatefulWidget {
  const OutlinedButtonExample({super.key});

  @override
  State<OutlinedButtonExample> createState() => _OutlinedButtonExampleState();
}

class _OutlinedButtonExampleState extends State<OutlinedButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(onPressed: (){}, child: Text("I'm an outlined button")),
      ],
    );
  }
}