import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.lightBlueAccent,
        
      ),
      
      drawer: MyDrawer(),
    );
  }
}
