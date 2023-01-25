import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item.dart';

class HomePage extends StatelessWidget {
  String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(7, 25, 0, 0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          }),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
