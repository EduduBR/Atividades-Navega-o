import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Strings.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sobre',
                style: TextStyle(fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  MyStrings.info,
                  style: const TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
