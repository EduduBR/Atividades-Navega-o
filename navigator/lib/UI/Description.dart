import 'package:flutter/material.dart';
import 'package:navigator/Widget/SiderBarIII.dart';
import '../Widget/ListView.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            const SideBarIII(),
            Expanded(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(selectedTitle,
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                    width: 350,
                    child: Text(selectedDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 40)))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
