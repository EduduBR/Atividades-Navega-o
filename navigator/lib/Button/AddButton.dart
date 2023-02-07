import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Color.dart';
import 'package:navigator/main.dart';
import '../ViewModel/Model.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return SizedBox(
      width: 132,
      height: 30,
      child: ElevatedButton(
        onPressed: () {
          work.next(homecontroller);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: MyColors.basePurple),
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          'Nova atividade',
          style: TextStyle(color: MyColors.basePurple),
        ),
      ),
    );
  }
}
