
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import '../Acervo/Class_Color.dart';

class SiderBar extends StatelessWidget {
  const SiderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SidebarX(
              headerDivider: const Spacer(),
              footerDivider: const Spacer(),
              theme: SidebarXTheme(
                 
                  selectedIconTheme: const IconThemeData(color: Colors.white),
                  decoration: BoxDecoration(color: MyColors.basePurple)),
              controller: SidebarXController(selectedIndex: 0),
              items: const [
                SidebarXItem(icon: Icons.home, label: 'Home'),
                SidebarXItem(icon: Icons.info, label: 'Search'),
              ],
            );
  }
}