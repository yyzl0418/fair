import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber,
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.red,
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_listview_listview_demo.fair.json",))
        ],
      ),
    );
  }
}
