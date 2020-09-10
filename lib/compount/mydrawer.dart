import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture:
            CircleAvatar(child: Icon(Icons.person)),
            accountName: Text("kareem"),
            accountEmail: Text("kareem@gmail.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/m1.jpg"),
                    fit: BoxFit.fill)),
          ),
          ListTile(
            title: Text(
              "الصفحة الرئيسة",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          Divider(color: Colors.blue),
          ListTile(
            title: Text(
              "الاقسام",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),

            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/categories');

            },
          ),
          Divider(color: Colors.blue)
        ],
      ),
    );
  }
}