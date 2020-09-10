import 'package:ecomapp/compount/mydrawer.dart';
import 'package:ecomapp/pages/moblist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {

  var map = [
    {
      'name':'p30 pro',
      'year':'2020',
    },
    {
      'name':'p40 pro',
      'year':'2040',
    },
    ];

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
        body: ListView.builder(
          itemCount: map.length,
          itemBuilder: (context, index) {
            return MobList(name: map[index]['name'],year: map[index]['year'],);
          },
        ),
      ),
    );
  }
}



