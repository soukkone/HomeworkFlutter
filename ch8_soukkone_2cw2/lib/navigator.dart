import 'package:flutter/material.dart';
import 'package:ch8_soukkone_2cw2/about.dart';
// import 'package:ch8_soukkone_2cw2/gratitude.dart';
class gratitude extends StatefulWidget {
  const gratitude({super.key});

  @override
  State<gratitude> createState() => _gratitudeState();
}

class _gratitudeState extends State<gratitude> {

  String _howAreYou = "...";
  void _openPageAbout({required BuildContext context, bool fullscreenDialog = false}) {
 Navigator.push(
  context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => About(),
      ),
    );
  }

  // void _openPageGratitude(
  //     {required BuildContext context, bool fullscreenDialog = false}) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       fullscreenDialog: fullscreenDialog,
  //       builder: (context) => Gratitude(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Navigator',
        style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => _openPageAbout(
              context: context,
              fullscreenDialog: true,
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Icon(
      //     Icons.sentiment_satisfied,
      //     size: 120.0,
      //     color: Colors.lightGreen,
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Grateful for: $_howAreYou',
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: (){}, //=> _openPageGratitude(context: context),
        tooltip: 'About',
        child: Icon(Icons.sentiment_satisfied,
        color: Colors.white,
        ),
      ),
    );
  }
}
