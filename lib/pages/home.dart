import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  //Build method is used for returning a widget, in this case
  //we will return a scaffold widget, which is a widget that covers
  //the whole screen, using nested widgets we can build a complex UI
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
                  //ADDS BLACK OPACITY TO IMAGE,

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
      //Book Now section
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          //Navigate to the booking page
          Navigator.pushNamed(context, '/booking');
        },
        label: const Text('Book Now'),
        icon: const Icon(Icons.book_online),
        backgroundColor: Colors.black,
      ),
    );
  }
}
