import 'package:flutter/material.dart';
import 'package:wolven_cabins/pages/home.dart';
import 'package:wolven_cabins/pages/reservations.dart';
import 'package:wolven_cabins/pages/settings.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int myIndex = 0;  //Index for the bottom navigation bar
  List<Widget> pages = const [
    HomeView(),
    ReservationsView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BODY WITH TEXT ABOVE AN IMAGE
      body: Center(
        child: pages[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ad_units_outlined),
            label: 'My Reservations',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Settings',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

