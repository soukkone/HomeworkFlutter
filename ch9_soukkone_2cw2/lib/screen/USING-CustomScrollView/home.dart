import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: unused_import
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomScrollView - Slivers'),
        elevation: 0.0,
      ),
      body: const CustomScrollView(
        slivers: <Widget>[
          
        ],
      ),
    );
  }
}

class SliverGridWidget {
  const SliverGridWidget();
}

class SliverListWidget {
  const SliverListWidget();
}

class SliverAppBarWidget {
  const SliverAppBarWidget();
}
