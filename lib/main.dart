import 'package:ecomapp/pages/categories.dart';
import 'package:ecomapp/pages/home.dart';
import 'package:ecomapp/pages/mobdetails.dart';
import 'package:ecomapp/pages/samsung.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "billowner",
      home: Home(),
      routes: {
        '/categories':(context){return Categories();},
        '/samsung':(context){return Samsung();},
        '/mobdetails':(context){return MobDetails();},
      },
    );
  }
}
