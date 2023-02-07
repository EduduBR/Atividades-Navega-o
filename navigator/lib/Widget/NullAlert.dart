import 'package:flutter/material.dart';
import '../Acervo/Class_Color.dart';

class NullCheck extends StatelessWidget {
  const NullCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          side: BorderSide(color: MyColors.basePurple, width: 6)),
      content: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text('Digite um Titulo\npara sua atividade',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: 140,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: MyColors.basePurple, width: 6)),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Center(
                    child: Text('Ok',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
