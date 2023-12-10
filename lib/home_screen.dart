import 'package:flutter/material.dart';
import 'package:hotel_ui/items/nearby_item.dart';

import 'items/popular_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView (
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text("Current location",style: TextStyle(
                        color: Color(0xff878787),
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                        color: Color(0xff4C4DDC),
                        ),
                        Text(" Wallace, Australia ",style: TextStyle(
                            color: Color(0xff101010),
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                        ),

                        Icon(Icons.keyboard_arrow_down_outlined,
                          color: Color(0xff4C4DDC),
                        ),

                      ],

                    )
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.notifications,
                  color: Color(0xff101010),
                  size: 30,
                ),
              )

              // Container(
              //   width: 80,
              //   child: OutlinedButton.icon(
              //     onPressed: () {},
              //     icon: Icon(Icons.notifications,
              //     color: Color(0xff101010),),
              //     label: Center(
              //         child: Text(
              //           " ",
              //           style: TextStyle(
              //               fontSize: 14,
              //               fontWeight: FontWeight.bold,
              //               color: Color(0xff9098B1)),
              //         )),
              //     style: OutlinedButton.styleFrom(
              //       fixedSize: Size(MediaQuery.of(context).size.width,
              //           MediaQuery.of(context).size.height * 0.0100),
              //     ),
              //   ),
              // ),


            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(

                hintText: "Search Hotel",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15,),
                ),
                prefixIcon:  Icon(Icons.search_outlined,
                  color: Color(0xff878787),
                ),
                suffixIcon: Image.asset("assets/images/homeScreen/IconSetting.png")
              ),


              // icon: Icon(Icons.search_outlined,
              //   color: Color(0xff878787),
              // ),
              // label: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //
              //         "Search Hotel",
              //         style: TextStyle(
              //             fontSize: 14,
              //             fontWeight: FontWeight.w500,
              //             color: Color(0xff878787),
              //         ),
              //     ),
              //     Icon(Icons.settings)

                // ],

              // ),
              // style: OutlinedButton.styleFrom(
              //   fixedSize: Size(MediaQuery.of(context).size.width,
              //       MediaQuery.of(context).size.height * 0.070),
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(

                  "Nearby your location",
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
                ),


              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all( 16),
            child: SizedBox(

              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:20,
                itemBuilder: (context, index) {
                  return NearbyItem();


                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(

                  "Popular Destination",
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
                ),



              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 16),
            child: SizedBox(


              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 1,
                  mainAxisSpacing: 0,
                  childAspectRatio: 2.8

                ),
                physics: NeverScrollableScrollPhysics(),

                scrollDirection: Axis.vertical,
                itemCount:20,
                itemBuilder: (context, index) {
                  return PopularItem();


                },
              ),
            ),
          ),






        ],
      ),



    );
  }
}
