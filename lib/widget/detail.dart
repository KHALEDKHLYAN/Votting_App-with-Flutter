// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class DetailsClass extends StatelessWidget {
  // String productDescription;
  final String productName;
  final String productDescription;

  DetailsClass(
      {Key? key, required this.productName, required this.productDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(productName),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              generateListTile(Icons.bookmark_added_rounded, productName,
                  productDescription),
              generateListTile(Icons.shopping_bag_outlined, "Bag",
                  "Brown Color Bag with straps"),
              generateListTile(Icons.chair, "Chair", "Wooden swinging Chair"),
            ],
          ),
        ));
  }
}

ListTile generateListTile(IconData icon, String title, String subtitle) {
  return ListTile(
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 1.0, color: Colors.grey.shade300),
    ),
    leading: IconButton(
      icon: Icon(icon, color: Colors.blueAccent),
      onPressed: () {},
    ),
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
    ),
    subtitle: Text(subtitle),
    trailing: const Icon(
      Icons.delete,
      color: Colors.grey,
    ),
  );
}
