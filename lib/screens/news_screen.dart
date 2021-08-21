import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lens_app/screens/web_viewer.dart';

class NewsScreen extends StatefulWidget {

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  final List<String> imageList = [
    "https://mm-g.ru/upload/iblock/bd8/bd88b15e23e418240f16f88e9c0b052a.jpg",
    "https://bash.today/storage/uploads/posts/kovorking/5b02b4330e37004001a48f016cc69674",
    "https://cdn.the-village.ru/the-village.ru/post_image-image/R8b8r43P2PZyCGsH72RxRw.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Новости",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: IconButton(
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 60,),
          CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
            ),
            items: imageList.map((e) => ClipRect(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    e,
                    width: 1050,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            )).toList(),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState((){
                Route route = MaterialPageRoute(builder: (context) => WebViewer());
                Navigator.push(context, route);
              });
            },
            child: Text(
              "Узнать подробнее",
              style: TextStyle(
                color: Colors.redAccent[100],
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}