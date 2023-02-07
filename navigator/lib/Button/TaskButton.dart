import 'package:flutter/material.dart';
import '../Acervo/Class_Color.dart';
import '../ViewModel/Model.dart';

class TaskButton extends StatelessWidget {
  
  const TaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return SizedBox(
      width: 132,
      height: 23,
      child: ElevatedButton(
        onPressed: () => work.process(context),
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.basePurple,
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: MyColors.basePurple),
                borderRadius: BorderRadius.circular(50))),
        child: const Text(
          'Salvar',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
