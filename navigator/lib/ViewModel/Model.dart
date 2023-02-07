import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Tasks.dart';
import 'package:navigator/Widget/NullAlert.dart';
import 'package:navigator/main.dart';
import '../UI/New_Activities.dart';

var tasksList = <Tasks>[];

class ViewModel {

  
  void delete() {
    for (var i = 0; i <= tasksList.length; i++) {
      if (tasksList[i].status == true) {
        tasksList.removeAt(i);
      }
    }
  }

  void addtask() {
    tasksList.add(Tasks(
        newtitle.text,
        '${DateTime.now().day} de ${month[DateTime.now().month - 1]} de ${DateTime.now().year}',
        newdata.text));
    back(homecontroller);
  }

  void nextII() {
    homecontroller.jumpToPage(2);
  }

  void backII() {
    homecontroller.jumpToPage(0);
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

  void cancel(context) {
    Navigator.pop(context);
  }

  void process(context) {
    if (newtitle.text == '') {
      showDialog(
        context: context,
        builder: (context) {
          return const NullCheck();
        },
      );
    } else {
      addtask();
    }
  }

  final month = [
    'janeiro',
    'fevereiro',
    'março',
    'abril',
    'maio',
    'junho',
    'julho',
    'agosto',
    'setembro',
    'outubro',
    'novembro',
    'dezembro',
  ];
}
