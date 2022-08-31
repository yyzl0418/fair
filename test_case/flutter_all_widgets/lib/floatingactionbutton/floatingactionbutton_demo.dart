import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
      body: FairWidget(path: "assets/bundle/fair/lib_floatingactionbutton_floatingactionbutton_demo.fair.json",),
    );
  }
}
