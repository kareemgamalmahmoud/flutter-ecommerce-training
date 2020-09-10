import 'package:ecomapp/compount/mydrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
        body: Container(
          child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              InkWell(
                child: GridTile(
                  child: Image.asset('images/products/p30pro.jpg'),
                  footer: Container(
                    color: Colors.grey,
                    child: Text(
                      "سامسونج",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/samsung');
                },
              ),
              InkWell(
                child: GridTile(
                  child: Image.asset('images/products/p30pro.jpg'),
                  footer: Container(
                    color: Colors.grey,
                    child: Text(
                      "هواوي",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onTap: () {},
              ),
              InkWell(
                child: GridTile(
                  child: Image.asset('images/products/p30pro.jpg'),
                  footer: Container(
                    color: Colors.grey,
                    child: Text(
                      "ابل",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
