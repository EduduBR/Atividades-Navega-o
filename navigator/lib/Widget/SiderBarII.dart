import 'package:flutter/material.dart';
import 'package:navigator/main.dart';
import 'package:sidebarx/sidebarx.dart';
import '../Acervo/Class_Color.dart';
import '../ViewModel/Model.dart';

class SiderBarII extends StatelessWidget {
  const SiderBarII({super.key});

  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return SidebarX(
      showToggleButton: false,
      footerDivider: const Spacer(),
      theme: SidebarXTheme(
          width: 64,
          selectedIconTheme: const IconThemeData(color: Colors.white, size: 40),
          decoration: BoxDecoration(color: MyColors.basePurple)),
      controller: SidebarXController(selectedIndex: 0),
      items: [
        SidebarXItem(
          icon: Icons.arrow_back,
          onTap: () {
            work.back(homecontroller);
           
          
          },
        ),
      ],
    );
  }
}
