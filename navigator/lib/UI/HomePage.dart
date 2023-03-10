import 'package:flutter/material.dart';
import 'package:navigator/UI/Info.dart';
import 'package:navigator/UI/My_Activities.dart';
import 'package:navigator/Widget/SiderBar.dart';

final controller = PageController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            const SiderBar(),
            Expanded(
              child: PageView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: const [MyActivities(), Info()]),
            )
          ],
        ),
      ),
    );
  }
}


