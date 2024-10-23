import 'package:flutter/material.dart';
import 'package:school_management_project/model/schedule_model.dart';

class Schedule2ItemScreen extends StatelessWidget {
  final Schedule2 schedule;

  const Schedule2ItemScreen({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 140,
      width: 170,
      decoration: schedule.containercolor
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.green[100])
          : BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.red[100]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DeadLine'),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                schedule.iconcolor
                    ? Icon(
                        Icons.circle,
                        size: 12,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.circle,
                        size: 12,
                        color: Colors.green,
                      ),
                SizedBox(
                  width: 6,
                ),
                Text(schedule.text),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(schedule.text1)
          ],
        ),
      ),
    );
    ;
  }
}
