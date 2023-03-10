import 'package:flutter/material.dart';
import 'package:navigator/Widget/ListView.dart';
import 'package:navigator/Widget/ConfirmDelete.dart';
import '../Acervo/Class_Color.dart';
import '../ViewModel/Model.dart';
import '../Button/AddButton.dart';

class MyActivities extends StatelessWidget {
  const MyActivities({super.key});

  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.fromLTRB(30, 40, 30, 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Minhas atividades',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 132,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return ConfirmDelete(
                                  child: GestureDetector(
                                onTap: () {
                                  work.delete(context);
                                },
                                child: const Center(
                                    child: Text('Confirmar',
                                        style: TextStyle(color: Colors.white))),
                              ));
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 3, color: Colors.red),
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          'Excluir',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  const AddButton()
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Atividades',
                        style: TextStyle(color: MyColors.grey, fontSize: 18)),
                    Text('criadas em:',
                        style: TextStyle(color: MyColors.grey, fontSize: 18))
                  ],
                ),
              ),
              Expanded(
                  child: AnimatedBuilder(
                      animation: work,
                      builder: (context, child) {
                        return ListViewTask();
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
