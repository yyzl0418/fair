import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpandedDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    width: 100,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_expanded_expanded_demo.fair.json",)),
        ],
      ),
    );
  }
}
