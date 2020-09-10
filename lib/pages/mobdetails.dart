import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MobDetails extends StatefulWidget {
  @override
  _MobDetailsState createState() => _MobDetailsState();
}

class _MobDetailsState extends State<MobDetails> {

Future getData() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(url);
  var responsebody = jsonDecode(response.body);

  return responsebody;
}



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('تفاصيل الهاتف'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            InkWell(
              child: ListTile(
                title: Image.asset('images/products/p30pro.jpg'),
                subtitle: Container(
                  width: double.infinity,
//                  what is the different ==> width: MediaQuery.of(context).size.width
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
            Container(
              height: 400,
              width: double.infinity,
              child: FutureBuilder(
                future: getData(),
                builder: (BuildContext context , AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: 10, itemBuilder: (context, i) {
                      return Container(child: Text(snapshot.data[i]['title']),);
                    });
                  }
                  return CircularProgressIndicator();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
