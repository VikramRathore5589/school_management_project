import 'package:flutter/material.dart';
import 'package:school_management_project/model/schedule_model.dart';

class ScheduleItemScreen extends StatelessWidget {
  final Schedule items;

  const ScheduleItemScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.grey[300]),
      child: Center(
        child: ListTile(
          minTileHeight: 120,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    items.text,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    items.text1,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              VerticalDivider(
                width: 30,
                endIndent: 1,
                thickness: 2,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    items.text2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(
                    children: [
                      items.icon,
                      Text(
                        items.text3,
                      ),
                    ],
                  ),
                  Text(
                    items.text4,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
