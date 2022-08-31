import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class IndexedStackDemo extends StatelessWidget {
  const IndexedStackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IndexedStackDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: 1,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_indexedstack_indexedstack_demo.fair.json",)),
        ],
      ),
    );
  }
}
