import 'package:flutter/material.dart';
import 'package:flutter_application_7_v1/homescreen.dart';
import 'package:flutter_application_7_v1/signup_form.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var selectedIndex = 0;

  var pageViewList = [HomeScreen(), Signup()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (va) {
            setState(() {
              selectedIndex = va;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
          ]),
      body: pageViewList[selectedIndex],
    );
  }
}
