import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Color.dart';
import 'package:navigator/main.dart';
import '../ViewModel/Navegator.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = MyNavigator();
    return SizedBox(
      width: 132,
      height: 30,
      child: ElevatedButton(
        onPressed: () {
          navigator.next(homecontroller);
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
