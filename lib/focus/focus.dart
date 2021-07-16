import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class FocusScreen extends StatefulWidget {
  @override
  _FocusScreenState createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Text('Hi'),
    // );
    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      duration: 10,
      fillColor: Colors.blue,
      ringColor: Colors.grey,
    );
  }
}
