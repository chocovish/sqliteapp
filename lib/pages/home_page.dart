// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sqliteapp/comps/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final fnController = TextEditingController();
  final lnController = TextEditingController();

  @override
  void dispose() {
    fnController.dispose();
    lnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add User")),
      drawer: Sidebar(),
      body: Column(
        children: <Widget>[
          TextField(
            controller: fnController,
            decoration: InputDecoration(labelText: "First Name"),
          ),
          TextField(
            controller: lnController,
            decoration: InputDecoration(labelText: "Last Name"),
          ),
          ElevatedButton(
            child: Text("Add"),
            onPressed: () {},
          ),
          Expanded(child: Text("ListView will be here")),
        ],
      ),
    );
  }
}
