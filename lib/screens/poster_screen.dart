import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lens_app/screens/web_viewer.dart';


class PosterScreen extends StatefulWidget {

  @override
  _PosterScreenState createState() => _PosterScreenState();
}

class _PosterScreenState extends State<PosterScreen> {

  final List<String> imageList = [
    "https://cdnmyslo.ru/AfishaImage/13/e0/13e02713-d998-469c-bc06-d5fd3a4d82b5_1.jpg",
    "https://ponominalu.ru/media/in/640x342/6983224aaa6b1832485e33d71c8ffe3ff2154138.jpeg",
    "https://1.assets.klops.ru/affiche_media/W1siZiIsIjIwMjFcLzA3XC8xNFwvNTF3ZTFvd2FpMV8xMDAweDU2OF8yXy5qcGciXSxbInAiLCJ0aHVtYiIsIjEwMDF4NTY4KzArMCJdLFsicCIsInRodW1iIiwiMTAwMHg1NjgjIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODUgLXN0cmlwIC1pbnRlcmxhY2UgUGxhbmUiXV0=?sha=72b51bae6df2c841",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Афиша",
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