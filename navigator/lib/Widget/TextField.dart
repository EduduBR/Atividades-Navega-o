import 'package:flutter/material.dart';
import 'package:navigator/Acervo/Class_Color.dart';

class Box extends StatelessWidget {
  final TextEditingController controlador;
  String label;
  Box(this.controlador, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.bottom,
      cursorColor:MyColors.basePurple,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 260),
        labelStyle: TextStyle(
          color:MyColors.basePurple, fontSize: 20),
        border: const OutlineInputBorder(),
       labelText: label,
      floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color:MyColors.basePurple, width: 4.0),
            borderRadius: BorderRadius.circular(5)),
        enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color:MyColors.basePurple, width: 4.0),
            borderRadius: BorderRadius.circular(5)),
      ),
      controller: controlador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (controlador) {
        if (controlador == null || controlador.isEmpty) {
          return label;
        }
        return null;
      },
    );
  }
}
