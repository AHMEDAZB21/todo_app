import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_dm.dart';
import 'package:todo_app/screens/home/tabs/list_tap/todo_widget.dart';
import 'package:todo_app/utils/app_colors.dart';

class ListTap extends StatelessWidget {
  const ListTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.accentColor,
        //   Column(
          // children: [
          //   Container(
          //     child: CalendarTimeline(
          //       initialDate: DateTime(2020, 4, 20),
          //       firstDate: DateTime(2019, 1, 15),
          //       lastDate: DateTime(2020, 11, 20),
          //       onDateSelected: (date) => print(date),
          //       leftMargin: 20,
          //       monthColor: Colors.blueGrey,
          //       dayColor: Colors.teal[200],
          //       activeDayColor: Colors.white,
          //       activeBackgroundDayColor: Colors.redAccent[100],
          //       dotsColor: Color(0xFF333A47),
          //       selectableDayPredicate: (date) => date.day != 23,
          //       locale: 'en_ISO',
          //     ),
          //   ),
          // ],
          // ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Todo(
                      todo: TodoDm(
                          title: "Play Basketball",
                          description: "test",
                          isDone: false,
                          date: DateTime.now()));
                }),
          ),
        ],
      ),
    );
  }
}
