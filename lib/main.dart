import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:repaso_flutter/model/SimpleProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => SimpleProvider(), child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appName = context.watch<SimpleProvider>();
    dynamic displayedName = appName.getName;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Provider test".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      displayedName,
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),

                SizedBox(width: 20),

                Center(child: Text("Este es un texto de prueba")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
