import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: .5,    // el shafafaya

        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),

                child: Image.asset("assets/images/homeScreen/popular_item.png")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,


                children: [
                  Row(
                    children: [
                      Text("Asteria hotel",
                      style: TextStyle(

                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff101010),

                      ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text("\$200,7 ",
                        style: TextStyle(
                            color: Color(0xff101010),
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),

                      ),

                      Text("/night",
                        style: TextStyle(
                            color: Color(0xff4C4DDC),
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                        ),

                      ),


                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("Wilora NT 0872, Australia",
                    style: TextStyle(

                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff878787),

                    ),
                  ),
                  SizedBox(height: 8,),


                  // Text(data),
                  Row(
                    children: [

                      Icon(Icons.star,
                        size: 16,
                        color: Color(0xffFFD33C),),
                      Icon(Icons.star,
                        size: 16,
                        color: Color(0xffFFD33C),),
                      Icon(Icons.star,
                        size: 16,
                        color: Color(0xffFFD33C),),
                      Icon(Icons.star,
                        size: 16,
                        color: Color(0xffFFD33C),),
                      Icon(Icons.star,
                        size: 16,
                        color: Color(0xffFFD33C),),
                      SizedBox(width: 8,),

                      Text("5.0",
                        style: TextStyle(
                            color: Color(0xff101010),
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                        ),

                      ),






                    ],
                  ),

                ],
              ),
            )

          ],

        ),
      ),
    );
  }
}
