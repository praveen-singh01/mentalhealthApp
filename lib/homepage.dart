// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'NavBar.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:url_launcher/url_launcher.dart';

class homePage extends StatelessWidget {
  String email;
  homePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 225, 179, 162),
        backgroundColor: Colors.white,
        drawer: NavBAr(),
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 255, 132, 94),
          backgroundColor: Color.fromARGB(255, 244, 190, 108),
          title: Text("BrightSide",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )
              // color: Color.fromARGB(255, 129, 5, 44)),
              ),
        ),
        body: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: w,
            height: h * 0.09,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage("assets/loginbtn.png"),
                    fit: BoxFit.cover)),
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: "welcome ",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [TextSpan(text: (email))]),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                height: h * 0.2,
                width: w * 0.4,
                color: Color.fromARGB(255, 239, 198, 136),
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Yoga",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: h * 0.2,
                width: w * 0.4,
                color: Color.fromARGB(255, 243, 205, 149),
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Schedule",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                height: h * 0.2,
                width: w * 0.4,
                color: Color.fromARGB(255, 246, 222, 186),
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Yoga",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: h * 0.2,
                width: w * 0.4,
                color: Color.fromARGB(255, 250, 215, 163),
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Schedule",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(left: 100),
            height: h * 0.05,
            width: w * 0.69,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 244, 190, 108)),
              onPressed: () {},
              child: Text(
                "start test",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: w * 0.8,
            height: h * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("assets/loginbtn.png"),
                    fit: BoxFit.cover)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: "Talk with consultant one ",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: w * 0.8,
            height: h * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("assets/loginbtn.png"),
                    fit: BoxFit.cover)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: "Talk with consultant two ",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          // Container(
          //   child: ElevatedButton(
          //       onPressed: () async {
          //         launch
          //         // const number = '9403012499'; //set the number here
          //         // await FlutterPhoneDirectCaller.callNumber(number);
          //       },
          //       child: Text("call")),
          // )
        ])));
  }
}
