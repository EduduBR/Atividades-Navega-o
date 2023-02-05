import 'package:flutter/material.dart';
import 'UI/HomePage.dart';
import 'UI/New_Activities.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

final homecontroller = PageController();

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
            controller: homecontroller,
            children: const [HomePage(),NewTask()]),
      ),
    );
  }
}
