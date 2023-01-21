// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/auth_controller.dart';

class NavBAr extends StatelessWidget {
  // String email;
  // late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  NavBAr({
    super.key,
  });

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          UserAccountsDrawerHeader(
            accountName: Text(""),
            accountEmail: Text(""),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/profile.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 162, 142),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/loginbtn.png",
                    ),
                    fit: BoxFit.cover)),
          ),

          // Container(
          //   decoration:
          //       BoxDecoration(color: Color.fromARGB(255, 227, 162, 142)),
          //   child: ListTile(
          //     leading: Icon(Icons.mark_chat_read),
          //     title: Text("Chatroom"),
          //     onTap: () => null,
          //   ),

          // ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/loginbtn.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.mark_chat_read),
                  title: Text(
                    "Chatroom",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("settings"),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.policy),
                  title: Text("Policies"),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text("share"),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("logout"),
                  onTap: () => authcontroller.instance.logout(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/loginbtn.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.mark_chat_read),
                  title: Text(
                    "footer",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => null,
                ),
                ListTile(
                    // leading: Icon(Icons.settings),
                    // title: Text("settings"),
                    // onTap: () => null,
                    ),
                ListTile(),
                ListTile(),
                ListTile(),
                ListTile(),
                ListTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
