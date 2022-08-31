import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class IntrinsicWidthDemo extends StatelessWidget {
  const IntrinsicWidthDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IntrinsicWidthDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: IntrinsicWidth(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_intrinsicwidth_intrinsicwidth_demo.fair.json",)),
        ],
      ),
    );
  }
}
