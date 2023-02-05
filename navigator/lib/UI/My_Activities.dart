import 'package:flutter/material.dart';

import 'package:navigator/Widget/ListView.dart';

import '../Acervo/Class_Color.dart';
import '../ViewModel/Model.dart';
import '../Widget/Button/AddButton.dart';

class MyActivities extends StatefulWidget {
  const MyActivities({super.key});

  @override
  State<MyActivities> createState() => _MyActivitiesState();
}

class _MyActivitiesState extends State<MyActivities> {
  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.fromLTRB(30,40,30,10),
          child: Column(
            children: [
              Row(
                children: [
                  const Text('Minhas atividades', style: TextStyle(fontSize: 40)),
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
                              return AlertDialog(
                                content: Column(
                                  children: [
                                    const Text('Excluir as atividades?'),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 110,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: GestureDetector(
                                              onTap: () {
                                                work.cancel(context);
                                              },
                                              child: const Center(
                                                  child: Text('Cancelar')),
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: MyColors.pink,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  work.cancel(context);
                                                  work.delete();
                                                });
                                              },
                                              child: const Center(
                                                  child: Text('Confirmar',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white))),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
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
                  AddButton()
                ],
              ),
              Expanded(
                  child: ListTask())
            ],
          ),
        ),
      ),
    );
  }
}
