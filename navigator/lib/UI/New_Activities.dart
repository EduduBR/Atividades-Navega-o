import 'package:flutter/material.dart';

import 'package:navigator/Widget/TextField.dart';

import '../Widget/Button/CancelButton.dart';
import '../Widget/Button/TaskButton.dart';
import '../Widget/SiderBarII.dart';


 final newtitle = TextEditingController();
    final newdata = TextEditingController();

class NewTask extends StatelessWidget {
  const NewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            const SiderBarII(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 250, 10),
                child: ListView(
                  children: [
                    const Text(' Nova Atividade',
                        style: TextStyle(fontSize: 40)),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: 350,
                      height: 54,
                      child: Box(newtitle, ' Nova atividade'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: 350,
                      height: 350,
                      child: Box(newdata, 'Descrição'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                     
                          CancelButton(),
                          TaskButton(
                              )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
