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
    final newName = "NewName"; //Change this to update the name

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
                  width: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      displayedName,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 20),

                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        appName.setName(newName);
                      },
                      child: Text(
                        "Update name",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: () {
                        appName.resetName();
                      },
                      child: Text(
                        "Reset name",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
