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

              GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 4,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  HomeCard(
                    textCard: 'Hello 1',
                    imageCard:
                        'https://cdn.pixabay.com/photo/2018/08/26/23/55/woman-3633737_1280.jpg',
                  ),
                  HomeCard(
                    textCard: 'Hello 2',
                    imageCard: '',
                  ),
                  HomeCard(
                    textCard: 'Hello 3',
                    imageCard:
                        'https://cdn.pixabay.com/photo/2018/08/26/23/55/woman-3633737_1280.jpg',
                  ),
                  HomeCard(
                    textCard: 'Hello 4',
                    imageCard:
                        'https://www.thoughtco.com/thmb/pnrRIRgRS_sLqq3ywYF0UzMpby4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Getty_grammar_basics-550382899-57edc0c63df78c690f20836f.jpg',
                  ),
                  HomeCard(
                    textCard: 'Hello 5',
                    imageCard: '',
                  ),
                  HomeCard(
                    textCard: 'Hello 6',
                    imageCard: '',
                  ),
                  HomeCard(
                    textCard: 'Hello 7',
                    imageCard: '',
                  ),
                ],
              )
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: GridView.builder(
              //       shrinkWrap: true,
              //       physics: NeverScrollableScrollPhysics(),
              //       gridDelegate:
              //           const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 3,
              //         crossAxisSpacing: 10,
              //         mainAxisSpacing: 10,
              //       ),
              //       itemCount: 20,
              //       itemBuilder: (BuildContext context, int index) {
              //         return HomeCard();
              //       }),
              // ),
            ],
          ),
        ));
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.textCard,
    required this.imageCard,
  });

  final String textCard;
  final String imageCard;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(imageCard),
        Container(
          height: double.infinity,
          padding: const EdgeInsets.all(8),
          color: Colors.teal[100],
          child: Text(textCard),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(color: Colors.red, child: Icon(Icons.add))),
      ],
    );
  }
}
