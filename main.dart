import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/core/theme/appColors.dart';
import 'package:provider_tutorial/core/widget/bottomBar.dart';
import 'package:provider_tutorial/provider/light-dark-mode.dart';
import 'package:provider_tutorial/router/router.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Dark_Light_Provider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: AppRoutes.app_routes,
      //home: const MyHomePage(title: 'To-Do Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final dark_light_theme = context.watch<Dark_Light_Provider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark_light_theme.currentMode
            ? Colors.blue
            : Colors.pink,
        foregroundColor: dark_light_theme.currentMode
            ? Colors.white
            : Colors.black,
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(widget.title, style: Fonts.title),
        ),
        leading: FloatingActionButton(
          onPressed: () {
            dark_light_theme.switchTheme();
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          highlightElevation: 0,
          splashColor: Colors.transparent,
          child: Icon(
            dark_light_theme.currentMode
                ? Icons.dark_mode_rounded
                : Icons.light_mode_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: dark_light_theme.currentMode ? Colors.black87 : Colors.white,
        width: double.infinity,
        height: 890,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    width: 370,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: dark_light_theme.currentMode
                              ? Colors.yellow
                              : Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Text(
                        "PopFlix",
                        style: TextStyle(
                          color: dark_light_theme.currentMode
                              ? AppColors.primaryColor_light
                              : AppColors.primaryColor_dark,

                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(currentIndex: 0),
    );
  }
}
