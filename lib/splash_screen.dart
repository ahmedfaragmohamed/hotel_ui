import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/images/splash/image_of_splash.png"),
            ),

            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                "Let’s Find Your Sweet \n& Dream Place",
                style: TextStyle(
                  color: Color(0xff323232),
                  fontSize: 28,
                  fontWeight: FontWeight.bold

                ),
                textAlign: TextAlign.center ,




              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                "Get the opportunity to stay that you dream of at an affordable price",
                style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: 14,
                    fontWeight: FontWeight.w400

                ),
                textAlign: TextAlign.center ,


              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.asset("assets/images/splash/1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.asset("assets/images/splash/2.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.asset("assets/images/splash/2.png"),
                  ),



                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26.0),
              child: ElevatedButton(
                onPressed: () {
                  // Perform an action when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 0,

                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120.0),
                  child: Text(
                    'Let’s Go',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),

            // TextButton(
            //   style: ButtonStyle(
            //     foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            //   ),
            //   onPressed: () { },
            //   child: Text('TextButton'),
            // ),



          ],
        ),
      ),
    );
  }
}


