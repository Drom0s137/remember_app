import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimeLine extends StatefulWidget {
  TimeLine() : super();

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Timeline.tileBuilder(
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Timeline Event $index'),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
