import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Example of how every element can be modified
        title: const Text(
            'HOME',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      //BODY WITH TEXT ABOVE AN IMAGE
      body: Column(
        children: [
          Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/cabinOutside.jpg',
                  fit: BoxFit.cover,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                        'Welcome to Wolven Wood',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                        ),
                        speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  isRepeatingAnimation: false,
                  onTap: () {},
                ),
              ]
          )
        ],
      ),
    );
  }
}
