import 'package:flutter/material.dart';

import 'grid_view_demo.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List foodList = [
    {
      "foodName": "Vegetable burger",
      "price": "100",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "foodName": "Chicken Burger",
      "price": "120.10",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "foodName": "Vegetable burger",
      "price": "100",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "foodName": "Chicken Burger",
      "price": "120.2",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "foodName": "Vegetable burger",
      "price": "100",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "foodName": "Chicken Burger",
      "price": "120.85",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "foodName": "Chicken Burger",
      "price": "120.5",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "foodName": "Vegetable burger",
      "price": "100",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "foodName": "Paneer Burger",
      "price": "150",
      "image":
          "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134032.jpg?w=2000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileCard(),
                SearchCard(),
                SizedBox(
                  height: 10,
                ),
                MenuBurgur(),
                SizedBox(
                  height: 5,
                ),
                Burgurs(foodList: foodList)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Search here.....",
          prefixIcon: Icon(Icons.search),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Hi Ronald!",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("What you want to eat today?",
                      textAlign: TextAlign.left)),
            ],
          ),
        ),
        Icon(Icons.lock),
      ],
    );
  }
}

class Burgurs extends StatelessWidget {
  Burgurs({
    super.key,
    required this.foodList,
  });

  final List foodList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Special Burgers",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: foodList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (BuildContext context, int index) {
              return BurgurCard(index: index, foodList: foodList);
            }),
      ],
    );
  }
}

class BurgurCard extends StatelessWidget {
  BurgurCard({
    super.key,
    required this.index,
    required this.foodList,
  });

  final int index;
  final List foodList;
  final List<Color> colors = [
    Colors.red.shade100,
    Colors.blue.shade100,
    Colors.yellow.shade100
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GridViewDemo()),
        );
      },
      child: Container(
        color: colors[index % 3],
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Image.network(
                            "${foodList[index]['image']}",
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: IconButton(
                                onPressed: () {
                                  print("check");
                                },
                                icon: Icon(Icons.favorite, color: Colors.red)))
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${foodList[index]['foodName']}"),
                    Text("${foodList[index]['price']}"),
                  ],
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.black,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class MenuBurgur extends StatelessWidget {
  MenuBurgur({
    super.key,
  });
  List catBurgurs = [
    {
      "catName": " Name 1",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "catName": " Name 2",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "catName": " Name 1",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "catName": " Name 2",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "catName": " Name 1",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "catName": " Name 2",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "catName": " Name 1",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "catName": " Name 2",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    },
    {
      "catName": " Name 1",
      "image":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fHww&w=1000&q=80"
    },
    {
      "catName": " Name 2",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/705104968/display_1500/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "View All",
              style: TextStyle(color: Color.fromRGBO(255, 152, 0, 1)),
            )
          ],
        ),
        Container(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: catBurgurs.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.black,
                      child: Image.network("${catBurgurs[index]['image']}"),
                    ),
                  ),
                  Text("${catBurgurs[index]['catName']}")
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
