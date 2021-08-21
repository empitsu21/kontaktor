import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lens_app/screens/news_screen.dart';
import 'package:flutter_lens_app/screens/poster_screen.dart';
import 'package:flutter_lens_app/screens/resident.dart';
import 'package:flutter_lens_app/service/authentication/auth_services.dart';
import 'package:provider/provider.dart';
import '../web_viewer.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    final loginProvider = Provider.of<AuthServices>(context);
    final List<String> imageList = [
      "https://tripmydream.cc/travelhub/travel/block_gallery/90/220/default_90220.jpg?",
      "https://cdn.vdmsti.ru/image/2021/56/1dnttc/original-1sd2.jpg",
      "https://cdn.the-village.ru/the-village.ru/post_image-image/20oeBQKzrFjXmKyxMM60kA-wide.jpg",
    ];

    final _pageController = PageController(
      initialPage: 1,
    );

    return PageView(
      controller: _pageController,
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              "РЕЗИДЕНТЫ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 24,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.account_circle, color: Colors.black,),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => ResidentCard());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://www.yclients.com/blog/wp-content/uploads/2018/08/kak-otkryt-barbershop.jpg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => ResidentCard());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://www.yclients.com/blog/wp-content/uploads/2018/08/kak-otkryt-barbershop.jpg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => ResidentCard());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://www.yclients.com/blog/wp-content/uploads/2018/08/kak-otkryt-barbershop.jpg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState((){
                    Route route = MaterialPageRoute(builder: (context) => WebViewer());
                    Navigator.push(context, route);
                  });
                },
                height: 80,
                minWidth: double.infinity,
                color: Colors.redAccent[100],
                child: Text(
                  "СТАТЬ РЕЗИДЕНТОМ",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              "KONTAKTOR",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 24,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.exit_to_app, color: Colors.black,),
                onPressed: () async => await loginProvider.logout(),
              ),
            ],
          ),
          body: Column(
            children: [
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
              SizedBox(height: 30,),
              Text(
                "Новости",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => NewsScreen());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://mm-g.ru/upload/iblock/bd8/bd88b15e23e418240f16f88e9c0b052a.jpg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => NewsScreen());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://images-na.ssl-images-amazon.com/images/I/91IHWG8HUNL.png"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => NewsScreen());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://images-na.ssl-images-amazon.com/images/I/91IHWG8HUNL.png"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.redAccent[100],
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 40,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              "KONTAKTOR",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 24,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.exit_to_app, color: Colors.black,),
                onPressed: () async => await loginProvider.logout(),
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.redAccent[100],
                child: Center(
                  child: Text(
                    "Регистрируйся на ивенты здесь",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Афиша',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => PosterScreen());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://cdnmyslo.ru/AfishaImage/13/e0/13e02713-d998-469c-bc06-d5fd3a4d82b5_1.jpg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => PosterScreen());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://lh3.googleusercontent.com/proxy/6YLCb3SM18KQYOURnTKL-exiKfSbso8BbOIgqe9c1ShsGbRhgn69LNKBtJIMNM41De9PvpG6zhIiYsa3By2VG92znFQY3pHEuPtEVOfZEXVL_WMzO-DI0iMu6Dq-Dkn2mnzUtrFuZ2H_xnTLspWVhlLqQg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState((){
                            Route route = MaterialPageRoute(builder: (context) => PosterScreen());
                            Navigator.push(context, route);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.network("https://lh3.googleusercontent.com/proxy/6YLCb3SM18KQYOURnTKL-exiKfSbso8BbOIgqe9c1ShsGbRhgn69LNKBtJIMNM41De9PvpG6zhIiYsa3By2VG92znFQY3pHEuPtEVOfZEXVL_WMzO-DI0iMu6Dq-Dkn2mnzUtrFuZ2H_xnTLspWVhlLqQg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              "Управление",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 24,
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 60,),
                CircleAvatar(
                  radius: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 5,),
                  child: Text(
                    "Иванов Иван Иванович",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "IT-Кластер",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),

                Expanded(
                    child: ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              children: [Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Сумма к оплате', style: TextStyle(fontSize: 20),),
                                  Text('58 463P', style: TextStyle(fontSize: 20),),
                                ],
                              ),
                                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Аренда помещения', style: TextStyle(color: Colors.grey),),
                                      Text('40 000P', style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Счета ЖКХ', style: TextStyle(color: Colors.grey),),
                                      Text('18 463P', style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                ),
                              ],
                          ),
                        ),
                        ElevatedButton.icon(icon: Icon(Icons.attach_money), onPressed: (){}, label: Text('Оплатить'),style: ElevatedButton.styleFrom(primary: Colors.redAccent),),
                        SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Договоры:', style: TextStyle(fontSize: 30),),
                                TextButton(onPressed: (){}, child: Text('Договор об аренде'), style: TextButton.styleFrom(primary: Colors.redAccent),),
                                TextButton(onPressed: (){}, child: Text('Условия сотрудничества'), style: TextButton.styleFrom(primary: Colors.redAccent),),
                                TextButton(onPressed: (){}, child: Text('Документ(Положение о чем-то очень важном)'), style: TextButton.styleFrom(primary: Colors.redAccent),),
                              ],
                          ),
                        ),
                        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.attach_email_sharp), label: Text('Создать запрос к администрации'),
                    style: ElevatedButton.styleFrom(primary: Colors.redAccent),),
                        SizedBox(height: 20,),
                        Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(radius: 40,),
                        Column(
                          children: [
                            Text('Габисов Мурат', style: TextStyle(fontSize: 20),),
                            Text('бэкенд девелопер', style: TextStyle(color: Colors.grey, fontSize: 12),)
                          ],
                        ),
                      ],
                    ),
                  ),
                        Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(radius: 40,),
                        Column(
                          children: [
                            Text('Кудзаев Заур', style: TextStyle(fontSize: 20),),
                            Text('Креатив менеджер', style: TextStyle(color: Colors.grey, fontSize: 12),)
                          ],
                        ),
                      ],
                    ),
                  ),
                        Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(radius: 40,),
                        Column(
                          children: [
                            Text('Тавгазов Леон', style: TextStyle(fontSize: 20),),
                            Text('фронтенд девелопер', style: TextStyle(color: Colors.grey, fontSize: 12),)
                          ],
                        ),
                      ],
                    ),
                  ),
                        Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(radius: 40,),
                        Column(
                          children: [
                            Text('Хугаев Эдуард', style: TextStyle(fontSize: 20),),
                            Text('хороший человек)', style: TextStyle(color: Colors.grey, fontSize: 12),)
                          ],
                        ),
                      ],
                    ),
                  ),
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
