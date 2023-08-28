import 'package:flutter/material.dart';

import 'custom_scroll.dart';
import 'onboarding.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
void main() {
  runApp(MyApp());
}

///
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: OnboardingScreen());
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Color.fromARGB(255, 255, 178, 126),
            Color.fromARGB(255, 255, 193, 178)
          ])),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Skip",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset("assets/images/images1.png"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Find a Resturant",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 210,
                  child: Text(
                    "Fastest operation to provide food by the fence",
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.blue,
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(
              color: Colors.white,
              style: IconButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {},
              icon: Icon(Icons.arrow_forward)),
          SizedBox(
            height: 15,
          )
        ],
      ),
    ));
  }
}
