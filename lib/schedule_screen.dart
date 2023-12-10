import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'items/popular_item.dart';
class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Card(
                  elevation: .5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios_outlined,
                      size: 30,),
                  ),
                ),
                Text("Schedule",
                style: TextStyle(
                  color: Color(0xff101010),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
                Card(
                  elevation: .5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.settings,
                    size: 30,),
                  ),
                )

              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              elevation: .5,
              child: TableCalendar(

                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Schedule",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff101010),
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4C4DDC),
                  ),
                )
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount: 1,
                mainAxisSpacing: 0,
                childAspectRatio: 3

            ),
            physics: NeverScrollableScrollPhysics(),

            scrollDirection: Axis.vertical,
            itemCount:20,
            itemBuilder: (context, index) {
              return PopularItem();


            },
          ),



        ],
      ),
    );
  }
}
