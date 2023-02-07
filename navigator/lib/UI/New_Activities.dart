import 'package:flutter/material.dart';
import 'package:navigator/Widget/TextField.dart';
import '../Button/CancelButton.dart';
import '../Button/TaskButton.dart';
import '../Widget/SiderBarII.dart';

final titleController = TextEditingController();
final dataController = TextEditingController();

class NewTask extends StatelessWidget {
  const NewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                      child: Box(titleController, ' Nova atividade'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: 350,
                      height: 350,
                      child: Box(dataController, 'Descrição'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [CancelButton(), TaskButton()],
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
