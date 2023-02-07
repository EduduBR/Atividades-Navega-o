import 'package:flutter/material.dart';
import 'package:navigator/ViewModel/Model.dart';

var selectedTitle = '';
var selectedDescription = '';

class ListViewTask extends StatefulWidget {
  const ListViewTask({super.key});

  @override
  State<ListViewTask> createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  final viewmodel = ViewModel();

  @override
  Widget build(BuildContext context) {
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
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black)),
                ),
                const Spacer(),
                Text(item.day,
                    style: const TextStyle(fontSize: 14, color: Colors.black))
              ],
            ),
            onPressed: () {
              setState(() {
                selectedDescription = item.description;
                selectedTitle = item.title;
                viewmodel.nextII();
              });
            },
          ),
        );
      }),
    );
  }
}
