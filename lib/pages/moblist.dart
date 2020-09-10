import 'package:flutter/material.dart';
class MobList extends StatelessWidget {
  final name;
  final year;

  MobList({this.name , this.year});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.of(context).pushNamed('/mobdetails');},
      child: Container(
        height: 100,
        width: double.infinity,
        child: Card(
          child: Row(children: <Widget>[
            Expanded(flex:1,child: Image.asset('images/products/p30pro.jpg')),
            Expanded(flex:2,child: Text('name : $name  year : ${year} ', textAlign: TextAlign.center,))
          ],),
        ),
      ),
    );
  }
}