import 'package:flutter/material.dart';
import '../Acervo/Class_Color.dart';
import '../ViewModel/Model.dart';

class ConfirmDelete extends StatefulWidget {
  final Widget child;
  const ConfirmDelete({super.key, required this.child});

  @override
  State<ConfirmDelete> createState() => _ConfirmDeleteState();
}

class _ConfirmDeleteState extends State<ConfirmDelete> {
  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
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
                        work.cancel(context);
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
                  child: widget.child,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
