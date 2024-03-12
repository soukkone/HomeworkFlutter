// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import './gestures_scale.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text(
            'Gestures & Drag and Drop',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildGestureDetector(),
              Divider(
                color: Colors.black,
                height: 44.0,
              ),
              _buildDraggable(),
              Divider(
                height: 40.0,
              ),
              _buildDragTarget(),
              Divider(
                color: Colors.black,
              ),
              _next(),
            ],
          ),
        ),
      ),
    );
  }
}

GestureDetector _buildGestureDetector() {
  return GestureDetector(
    onTap: () {
      print('onTap');
      _displayGestureDetected('onTap');
    },
    onDoubleTap: () {
      print('onDoubleTap');
      _displayGestureDetected('onDoubleTap');
    },
    onLongPress: () {
      print('onLongPress');
      _displayGestureDetected('onLongPress');
    },
    onPanUpdate: (DragUpdateDetails details) {
      print('onPanUpdate: $details');
      _displayGestureDetected('onPanUpdate:\n$details');
    },
    //onVerticalDragUpdate: ((DragUpdateDetails details) {
    // print('onVerticalDragUpdate: $details');
    // _displayGestureDetected('onVerticalDragUpdate:\n$details');
    //}),
    //onHorizontalDragUpdate: (DragUpdateDetails details) {
    // print('onHorizontalDragUpdate: $details');
    // _displayGestureDetected('onHorizontalDragUpdate:\n$details');
    //},
    //onHorizontalDragEnd: (DragEndDetails details) {
    // print('onHorizontalDragEnd: $details');
    // if (details.primaryVelocity < 0) {
    // print('Dragging Right to Left: ${details.velocity}');
    // } else if (details.primaryVelocity > 0) {
    // print('Dragging Left to Right: ${details.velocity}');
    // }
    //},
    child: Container(
      color: Colors.lightGreen.shade100,
      width: double.infinity,
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.access_alarm,
            size: 98.0,
          ),
          Text('$_gestureDetected'),
        ],
      ),
    ),
  );
}

void _displayGestureDetected(String gesture) {
  setState(() {
    var _gestureDetected = gesture;
  });
}

class _gestureDetected {}

void setState(Null Function() param0) {}

Draggable<int> _buildDraggable() {
  return Draggable(
    child: Column(
      children: <Widget>[
        Icon(
          Icons.palette,
          color: Colors.deepOrange,
          size: 48.0,
        ),
        Text(
          'ລາກໄປທາງລຸ່ມເພື່ອປ່ຽນສີ',
        ),
      ],
    ),
    childWhenDragging: Icon(
      Icons.palette,
      color: Colors.grey,
      size: 48.0,
    ),
    feedback: Icon(
      Icons.brush,
      color: Colors.deepOrange,
      size: 80.0,
    ),
    data: Colors.deepOrange.value,
  );
}

DragTarget<int> _buildDragTarget() {
  var _paintedColor;
  return DragTarget<int>(
    onAccept: (colorValue) {
      var _paintedColor = Color(colorValue);
    },
    builder: (BuildContext context, List<dynamic> acceptedData,
            List<dynamic> rejectedData) =>
        acceptedData.isEmpty
            ? Text(
                'ລາກມາໃສ່ແລະເບິ່ງການປ່ຽນສີ',
                style: TextStyle(color: _paintedColor),
              )
            : Text(
                'Painting Color: $acceptedData',
                style: TextStyle(
                  color: Color(acceptedData[0]),
                  fontWeight: FontWeight.bold,
                ),
              ),
  );
}

class _next extends StatelessWidget {
  const _next({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(16.0)),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return gesturesScaleWidget();
                  },
                ));
              },
              child: Center(
                child: Text('Next'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
