import 'dart:convert';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecomapp/compount/mydrawer.dart';
import 'package:ecomapp/pages/moblist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listsearch = [];
  Future getData() async{

    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    for (int i = 0 ; i < responsebody.length ; i++)
      {
        listsearch.add(responsebody[i].toString());
      }
    print(listsearch);
  }



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
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                showSearch(context: context, delegate: DataSearch(list: listsearch));
            }),
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


class DataSearch extends SearchDelegate<String>{

  List<dynamic> list;
  DataSearch({this.list});
  Future getData() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);

    return responsebody;
  }

  var mm = [{'kareem' : '1000'},{'gamal':'500'}];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
      close(context, null);
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return FutureBuilder(
      future: getData(),
      builder: (BuildContext context , AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data.length, itemBuilder: (context, i) {
            return MobList(name: snapshot.data[i]['name'],year: snapshot.data[i]['year'],);
          });
        }
        return CircularProgressIndicator();
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    var searchlist = query.isEmpty ? list : list.where((p) => p.startswith(query)).toList();
    return ListView.builder( itemCount: searchlist.length, itemBuilder: (context , i){
      return ListTile(
        onTap: (){
          query = searchlist[i];
          showResults(context);
        },
        title: Text(searchlist[i].toString()) ,
          leading: Icon(Icons.mobile_screen_share),);
    });
  }
  
}