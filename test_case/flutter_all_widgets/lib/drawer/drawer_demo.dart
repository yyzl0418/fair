import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DrawerDemo"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
        ),
      ),
      body: Container(
        color: Colors.red,
        child: FairWidget(
          name: "DrawerDemo",
          path: "assets/bundle/fair/lib_drawer_drawer_demo.fair.json",
        ),
      ),
    );
  }
}
