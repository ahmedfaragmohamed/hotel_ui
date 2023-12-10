
import 'package:flutter/material.dart';
import 'package:hotel_ui/home_screen.dart';
import 'package:hotel_ui/schedule_screen.dart';
import 'package:hotel_ui/splash_screen.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Calender(),
    SplashScreen(),

    LockScreenTest()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),
              label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_add_outlined),
              label: "Book Mark"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),
              label: "Profile"),

        ],
      ),
    );
  }
}

class HomeScreenTest extends StatelessWidget {
  const HomeScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "HomeScreenTest",
          style: TextStyle(fontSize: 20),
        ));
  }
}

class ProfileScreenTest extends StatelessWidget {
  const ProfileScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "ProfileScreenTest",
          style: TextStyle(fontSize: 20),
        ));
  }
}

class FavoriteScreenTest extends StatelessWidget {
  const FavoriteScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "FavoriteScreenTest",
          style: TextStyle(fontSize: 20),
        ));
  }
}

class ShareScreenTest extends StatelessWidget {
  const ShareScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "HomeScreenTest",
          style: TextStyle(fontSize: 20),
        ));
  }
}

class LockScreenTest extends StatelessWidget {
  const LockScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "LockScreenTest",
          style: TextStyle(fontSize: 20),
        ));
  }
}
