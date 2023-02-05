import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Color.dart';
import 'package:navigator/Acervo/Class_Tasks.dart';
import 'package:navigator/Widget/NullAlert.dart';
import 'package:navigator/main.dart';
import 'package:intl/intl.dart';
import '../UI/New_Activities.dart';

var tasksList = <Tasks>[];

class ViewModel extends ChangeNotifier {
  void delete() {
    for (var i = 0; i < tasksList.length; i++) {
      if (tasksList[i].status == true) {
        tasksList.removeAt(i);
      }
    }
    notifyListeners();
  }

  void next(controller) {
    controller.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }

  void back(controller) {
    newtitle.clear();
    newdata.clear();
    controller.previousPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }

  void addtask() {
    tasksList.add(Tasks(
        newtitle.text,
        '${DateTime.now().day} de ${DateFormat("MMMM").format(DateTime.now())} de ${DateTime.now().year}',
        newdata.text));
    back(homecontroller);
    notifyListeners();
    print(tasksList.length);
  }

  void cancel(context) {
    Navigator.pop(context);
    notifyListeners();
  }

  void process(context) {
    if (newtitle.text == '') {
      showDialog(
        context: context,
        builder: (context) {
          return NullCheck();
        },
      );
    } else {
      addtask();
    }
  }
}
