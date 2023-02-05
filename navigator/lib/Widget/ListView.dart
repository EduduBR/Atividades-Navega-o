import 'package:flutter/material.dart';
import 'package:navigator/ViewModel/Model.dart';

class ListTask extends StatefulWidget {
  const ListTask({super.key});

  @override
  State<ListTask> createState() => _ListTaskState();
}

class _ListTaskState extends State<ListTask> {
  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return AnimatedBuilder(
        animation: work,
        builder: (context, child) {
          return ListView.builder(
            itemCount: tasksList.length,
            itemBuilder: ((context, index) {
              var item = tasksList[index];
              return Container(
                color: Colors.white,
                width: 428,
                height: 70,
                child: ElevatedButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: item.status,
                        onChanged: (bool? value) {
                          setState(() {
                            item.status = value!;
                          });
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        child: Text(item.title,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black)),
                      ),
                      Text(item.day,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black))
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      //avançamos para proxima pagina
                    });
                  },
                ),
              );
            }),
          );
        });
  }
}
