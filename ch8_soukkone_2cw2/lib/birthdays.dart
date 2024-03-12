import 'package:flutter/material.dart';

class birthday extends StatelessWidget {
  const birthday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Birthdays',
        style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Icon(
          Icons.cake,
          size: 120.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
