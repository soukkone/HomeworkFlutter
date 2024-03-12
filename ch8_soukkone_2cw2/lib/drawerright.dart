import 'package:flutter/material.dart';
import 'package:ch8_soukkone_2cw2/listmenu.dart';

class drawerright extends StatelessWidget {
  const drawerright({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.face,
              size: 128.0,
              color: Colors.white54,
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          listmenu(),
        ],
      ),
    );
  }
}
