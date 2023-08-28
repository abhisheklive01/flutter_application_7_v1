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
      backgroundColor: Colors.orange,
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
                          SizedBox(
                            height: 20,
                          ),
                          DotList(),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
                Container(
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        Text("Page 1"),
                      ],
                    )),
                Container(
                    color: Colors.pink,
                    child: Column(
                      children: [
                        Text("Page 2"),
                        Text("Page 2"),
                        Text("Page 2"),
                        DotList(),
                        Text("Page 2"),
                      ],
                    )),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 30,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return currentPage == index ? ActiveDot() : InActiveDot();
                  },
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
        ],
      ),
    );
  }
}

class DotList extends StatelessWidget {
  const DotList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActiveDot(),
        InActiveDot(),
        InActiveDot(),
        InActiveDot(),
      ],
    );
  }
}

class ActiveDot extends StatelessWidget {
  const ActiveDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 20,
      height: 20,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          shape: BoxShape.circle),
      child: Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      ),
    );
  }
}

class InActiveDot extends StatelessWidget {
  const InActiveDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 15,
      height: 15,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    );
  }
}
