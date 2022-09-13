import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class ListBodyDemo extends StatelessWidget {
  const ListBodyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListBodyDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: ListBody(
                mainAxis: Axis.vertical,
                reverse: false,
                children: [
                  Container(
                    height: 100,
                    color: Colors.blue[50],
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue[100],
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue[200],
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue[300],
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue[400],
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue[500],
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue[600],
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_listbody_listbody_demo.fair.json",))
        ],
      ),
    );
  }
}
