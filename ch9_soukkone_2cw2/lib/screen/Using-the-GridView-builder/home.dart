import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const GridViewBuildWidget(),
      ),
    );
  }
}

class GridViewBuildWidget extends StatelessWidget {
  const GridViewBuildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Text('Item $index'),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const Home(),
  ));
}
