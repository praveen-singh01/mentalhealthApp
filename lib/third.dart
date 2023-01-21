// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mentalhealth/signup.dart';
import 'package:get/get.dart';

//import on board me dependency

class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroScreen();
  }
}

class _IntroScreen extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    //this is a page decoration for intro screen
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
      titlePadding: EdgeInsets.fromLTRB(
          10.0, 80.0, 20.0, 10.0), //tile font size, weight and color
      bodyTextStyle: TextStyle(
        fontSize: 19.0,
        color: Colors.grey[500],
      ),
      //body text size and color
      bodyPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),

      //decription padding

      imagePadding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),

      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          // ignore: prefer_const_literals_to_create_immutables
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
          ],
        ),
      ), //show linear gradient background of page
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      //main background of screen

      pages: [
        //set your page view here
        PageViewModel(
          title: "Welcome to BrightSide",
          body:
              "Get help with common mental health problems such as stress,anixiety,depession and panic",
          image: introImage('assets/one.PNG'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Plan helpful activities",
          body:
              "Discover and plan the activities that you find most useful.We'll remind you beforehand and help you self-reflect afterwaard.",
          image: introImage('assets/two.PNG'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Journal on the go",
          body:
              "The best time to journal is whenever the feeling or desire arises.With the app you can capture it in the moment.",
          image: introImage('assets/three.PNG'),
          decoration: pageDecoration,
        ),

        //add more screen here
      ],

      onDone: () => goHomepage(context), //go to home page on done
      onSkip: () => goHomepage(context), // You can override on skip
      showSkipButton: true,
      dotsFlex: 0,
      nextFlex: 0,
      skip: Text(
        'Skip',
        style: TextStyle(color: Colors.black),
      ),
      next: Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: Text(
        'Getting Stated',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0), //size of dots
        color: Color.fromARGB(162, 52, 51, 51), //color of dots
        activeSize: Size(22.0, 10.0),
        //activeColor: Colors.white, //color of active dot
        activeShape: RoundedRectangleBorder(
          //shave of active dot
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return signUppage();
    }), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      child: Image.asset('$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
}
