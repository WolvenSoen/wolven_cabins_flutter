import 'package:flutter/material.dart';
import 'package:wolven_cabins/pages/booking.dart';
import 'package:wolven_cabins/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      //const keyword is used to declare that a page will be "static"
      home: const HomePage(),
      //Routes are used to navigate between pages
      routes: {
        '/home': (context) => const HomePage(),
        '/booking': (context) => const BookingPage(),
      },
    );
  }
}

