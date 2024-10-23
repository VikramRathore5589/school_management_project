import 'package:flutter/material.dart';
import 'package:school_management_project/model/schedule_model.dart';
import 'package:school_management_project/screens/schedule2_item_screen.dart';
import 'package:school_management_project/screens/schedule_item_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150, // Set your desired height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),

                  color: Colors.blue[100], // Set your desired color
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Tue 22 Oct'),
                      ListTile(
                        leading: ClipOval(
                          child: Image.network(
                            'https://encrypted-tbn2.gstatic.com/images?q='
                            'tbn:ANd9GcSKnvZ3F54vSdTHorKYxij0NosgJ_dnLV5cnvh1HA8xtkxwd82E',
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title:
                            _buildAppbarText('Hi Jackal', FontWeight.w500, 25),
                        subtitle: _buildAppbarText(
                            'Here is a List of Schedule of\nstudentsyou need to check',
                            FontWeight.w400,
                            14),
                        horizontalTitleGap: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              _buildRowButtons('Today Classes'),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Schedule.infoList.length,
                itemBuilder: (context, index) {
                  Schedule items = Schedule.infoList[index];
                  return ScheduleItemScreen(items: items);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              _buildRowButtons('Your Task(4)'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    Schedule2.infoList2.length,
                    (index) {
                      Schedule2 schedule = Schedule2.infoList2[index];
                      return Schedule2ItemScreen(schedule: schedule);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _buildAppbarText(String text, FontWeight fontweight, double size) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: size,
        fontWeight: fontweight,
        letterSpacing: 0.2,
      ),
    );
  }

  Padding _buildRowButtons(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.2,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
