import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPage createState() => _CollectionPage();
}

class _CollectionPage extends State<CollectionPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Collections'),
        ),
        body: Center(child: Text('Collection', style: TextStyle(fontSize: 60))),
      );
}
