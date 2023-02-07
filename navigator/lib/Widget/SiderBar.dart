import 'package:flutter/material.dart';
import 'package:navigator/ViewModel/Model.dart';
import 'package:sidebarx/sidebarx.dart';
import '../Acervo/Class_Color.dart';
import '../UI/HomePage.dart';

class SiderBar extends StatelessWidget {
  const SiderBar({super.key});

  @override
  Widget build(BuildContext context) {
    final work = ViewModel();
    return SidebarX(
      showToggleButton: false,
      headerDivider: const Spacer(),
      footerDivider: const Spacer(),
      theme: SidebarXTheme(
          width: 64,
          iconTheme: IconThemeData(color: Colors.white.withOpacity(0.5)),
          selectedIconTheme: const IconThemeData(color: Colors.white),
          decoration: BoxDecoration(color: MyColors.basePurple)),
      controller: SidebarXController(selectedIndex: 0),
      items:  [
        SidebarXItem(
          icon: Icons.home,
          onTap: () => work.back(controller),
        ),
        SidebarXItem(icon: Icons.info,onTap: () => work.next(controller),),
      ],
    );
  }
}
