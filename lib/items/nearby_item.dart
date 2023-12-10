import 'package:flutter/material.dart';

class NearbyItem extends StatelessWidget {
  const NearbyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        elevation: 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/images/homeScreen/nearby_item.png",)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("The Aston Vill Hotel",
                    style: TextStyle(
                      color: Color(0xff101010),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),
              
                  ),
                  SizedBox(
                    width: 60,
                  ),
              
                  Icon(Icons.star,
                  size: 16,
                  color: Color(0xffFFD33C),),
                  Text("5.0",
                    style: TextStyle(
                        color: Color(0xff101010),
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
              
                  ),
                ],
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Alice Springs NT 0870, Australia",
                style: TextStyle(
                    color: Color(0xff878787),
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
              
                ),
              
              ),
            ),
            SizedBox(height: 8,),
              
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
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
            ),
          ],
        ),
      ),
    );
  }
}
