import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView Demo"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                        "Hello Hello HelloHelloH elloHell oHe lloHelloH elloHelloHello  Hello Hello "),
                  ),
                  Icon(Icons.lock)
                ],
              ),
              Container(
                height: 50,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(4),
                        width: 40,
                        height: 40,
                        color: Colors.black,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80",
                        ),
                      );
                    }),
              ),
              Text("Hello"),
              Text("Hello"),
              Text("Hello"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return HomeCard();
                    }),
              ),
            ],
          ),
        ));

    // GridView.count(
    //   padding: const EdgeInsets.all(20),
    //   crossAxisSpacing: 4,
    //   mainAxisSpacing: 10,
    //   crossAxisCount: 2,
    //   children: <Widget>[
    //     HomeCard(),
    //     HomeCard(),
    //     HomeCard(),
    //     HomeCard(),
    //     HomeCard(),
    //     HomeCard(),
    //     HomeCard(),
    //     HomeCard(),
    //   ],
    // ));
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          padding: const EdgeInsets.all(8),
          color: Colors.teal[100],
          child: const Text("He'd have you all unravel at the"),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(color: Colors.red, child: Icon(Icons.add))),
      ],
    );
  }
}
