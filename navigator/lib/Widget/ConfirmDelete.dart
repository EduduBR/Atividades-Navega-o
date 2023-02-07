import 'package:flutter/material.dart';
import '../Acervo/Class_Color.dart';
import '../ViewModel/Navegator.dart';

class ConfirmDelete extends StatelessWidget {
  final Widget child;
  const ConfirmDelete({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final navigator = MyNavigator();
    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Atenção\nExcluir as atividades?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 4),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        navigator.alertOff(context);
                      },
                      child: const Center(child: Text('Cancelar')),
                    )),
                Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                    color: MyColors.pink,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: MyColors.pink, width: 4),
                  ),
                  child: child,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
