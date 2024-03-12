import 'package:flutter/material.dart';
import 'package:ch9_soukkone_2cw2/screen/USING%20THE%20LISTVIEW%20AND%20LISTTILE/header.dart';
import 'package:ch9_soukkone_2cw2/screen/USING%20THE%20LISTVIEW%20AND%20LISTTILE/row.dart';
import 'package:ch9_soukkone_2cw2/screen/USING%20THE%20LISTVIEW%20AND%20LISTTILE/row_with_card.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return HeaderWidget(index: index);
            } else if (index >= 1 && index <= 3) {
              return RowWithCardWidget(index: index);
            } else {
              return RowWidget(index: index);
            }
          },
        ),
      ),
    );
  }
}
