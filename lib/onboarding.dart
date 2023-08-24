import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var title = "Find a Resturant";
  final controller = PageController();
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              children: [
                Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Column(
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
                            title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
                Container(color: Colors.yellow, child: Text("Page 1")),
                Container(color: Colors.pink, child: Text("Page 2")),
              ],
            ),
          ),
          IconButton(
              color: Colors.white,
              style: IconButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                controller.animateToPage(currentPage + 1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }
}
