import 'package:ecomapp/compount/mydrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('الاقسام'),
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: <Widget>[Container(
            height: 100,
            width: double.infinity,
            child: Card(
              child: Row(children: <Widget>[
                Expanded(flex:1,child: Image.asset('images/products/p30pro.jpg')),
                Expanded(flex:2,child: Text("specification" , textAlign: TextAlign.center,))
              ],),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
