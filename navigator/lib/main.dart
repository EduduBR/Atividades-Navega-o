import 'package:flutter/material.dart';
import 'package:navigator/UI/Description.dart';
import 'UI/HomePage.dart';
import 'UI/New_Activities.dart';

void main() {
  runApp(const App());
}

final homecontroller = PageController();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: homecontroller,
            children: const [HomePage(), NewTask(),Description()]),
      ),
    );
  }
}


