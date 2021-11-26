import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String taskText;
  final Widget checkBox;

  const TaskCard({Key? key, required this.taskText, required this.checkBox}) : super(key: key);

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blue.shade300
      ),
      child: ListTile(
        leading: widget.checkBox,
        title: Text(widget.taskText),
      )
    );
  }
}
