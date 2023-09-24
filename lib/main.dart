import 'package:flutter/material.dart';
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
      theme: ThemeData(),
      //const keyword is used to declare that a page will be "static"
      home: const HomePage(),
    );
  }
}

