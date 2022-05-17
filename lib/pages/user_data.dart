// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sqliteapp/comps/sidebar.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Application")),
      drawer: Sidebar(),
      body: Column(
        children: <Widget>[
          Card(
            child: Row(
              children: [
                Image.network("src"),
                Column(
                  children: [
                    Text("Captain America"),
                    Text("Steve Roger"),
                    Text("Avengers"),
                  ],
                )
              ],
            ),
          ),
          Card(
            child: Text("lorem ipsum..."),
          )
        ],
      ),
    );
  }
}
