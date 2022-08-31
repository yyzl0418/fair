import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class IconButtonDemo extends StatelessWidget {
  const IconButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IconButtonDemo"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            color: Colors.pink,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.audiotrack),
            color: Colors.green,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.beach_access),
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
