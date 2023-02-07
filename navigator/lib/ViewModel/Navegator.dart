import 'package:flutter/material.dart';


import '../UI/New_Activities.dart';
import '../main.dart';

class MyNavigator {
  void nextJump() {
    homecontroller.jumpToPage(2);
  }

  void backJump() {
    homecontroller.jumpToPage(0);
  }

  void next(controller) {
    controller.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }

  void back(controller) {
    titleController.clear();
    dataController.clear();
    controller.previousPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }

  void alertOff(context) {
    Navigator.pop(context);
  }
}
