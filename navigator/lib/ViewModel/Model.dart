import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Strings.dart';
import 'package:navigator/Acervo/Class_Tasks.dart';
import 'package:navigator/ViewModel/Navegator.dart';
import 'package:navigator/Widget/NullAlert.dart';
import 'package:navigator/main.dart';
import '../UI/New_Activities.dart';

var tasksList = <Tasks>[];

class ViewModel extends ChangeNotifier {
  final work = MyNavigator();
  final nameMonth = MyStrings();

  void delete(context) {
    var toRemove = [];
    for (var e in tasksList) {
      if (e.status == true) {
        toRemove.add(e);
      }
    }
    tasksList.removeWhere((e) => toRemove.contains(e));
    work.alertOff(context);
    notifyListeners();
  }

  void addtask() {
    final String date =
        '${DateTime.now().day} de ${nameMonth.month[DateTime.now().month - 1]} de ${DateTime.now().year}';
    tasksList.add(Tasks(titleController.text, date, dataController.text));
    work.back(homecontroller);
    notifyListeners();
  }

  void process(context) {
    if (titleController.text == '') {
      showDialog(
        context: context,
        builder: (context) {
          return const NullCheck();
        },
      );
    } else {
      addtask();
    }
    notifyListeners();
  }
}
