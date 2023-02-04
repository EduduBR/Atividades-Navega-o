import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Color.dart';
import 'package:navigator/Widget/SiderBar.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: const [
            SiderBar(),
            
          ],
        ),
      ),
    );
  }
}
