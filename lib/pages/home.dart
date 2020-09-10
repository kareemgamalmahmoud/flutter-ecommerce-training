import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecomapp/compount/mydrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mobeteck"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 6,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
          brightness: Brightness.light,
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                images: [
                  Image.asset('images/slider/s1.jpg', fit: BoxFit.cover),
                  Image.asset('images/slider/s2.jpg', fit: BoxFit.cover),
                  Image.asset('images/slider/s3.jpg', fit: BoxFit.cover),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightBlueAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.blueGrey.withOpacity(0.5),
                borderRadius: true,
                overlayShadow: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),
            // End Careousel
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "الاقسام",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            //start cat
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset('images/slider/s3.jpg'),
                      subtitle: Text(
                        "tttt",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "اخر المنتجات",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            Container(
              height: 400,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  InkWell(
                    child: GridTile(
                      child: Image.asset('images/products/p30pro.jpg'),
                      footer: Container(
                        color: Colors.grey,
                        child: Text(
                          "P30 Pro",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    onTap: (){
                    },
                  ),
                  GridTile(
                    child: Image.asset('images/products/p30pro.jpg'),
                    footer: Container(
                      color: Colors.grey,
                      child: Text(
                        "P30 Pro",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GridTile(
                    child: Image.asset('images/products/p30pro.jpg'),
                    footer: Container(
                      color: Colors.grey,
                      child: Text(
                        "P30 Pro",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GridTile(
                    child: Image.asset('images/products/p30pro.jpg'),
                    footer: Container(
                      color: Colors.grey,
                      child: Text(
                        "P30 Pro",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GridTile(
                    child: Image.asset('images/products/p30pro.jpg'),
                    footer: Container(
                      color: Colors.grey,
                      child: Text(
                        "P30 Pro",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
