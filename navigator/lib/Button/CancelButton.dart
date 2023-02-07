import 'package:flutter/material.dart';
import 'package:navigator/ViewModel/Model.dart';

import '../Acervo/Class_Color.dart';
import '../main.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return SizedBox(
      width: 132,
      height: 23,
      child: ElevatedButton(
        onPressed: () => work.back(homecontroller),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: MyColors.grey),
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          'Cancelar',
          style: TextStyle(color: MyColors.grey),
        ),
      ),
    );
  }
}
