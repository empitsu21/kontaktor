import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lens_app/screens/web_viewer.dart';


class ResidentCard extends StatefulWidget {

  @override
  _ResidentCardState createState() => _ResidentCardState();
}

class _ResidentCardState extends State<ResidentCard> {

  final List<String> imageList = [
    "https://solomon-barber.shop/wp-content/uploads/2017/05/barbershop-1-1.jpg.pagespeed.ce.UItp4QUK8T.jpg",
    "https://barber-shop.su/wp-content/uploads/2020/01/muzhskaya-parikmaherskaya-ili-barbershop.jpg",
    "https://www.geopietra.com/sites/default/files/styles/project_gallery_item_in_full/public/contenuti/realizzazione/gallery_realizzazione/r_padano_brolio_barbershop.jpg?itok=hqpCd9g4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Барбершоп BRIST",
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
