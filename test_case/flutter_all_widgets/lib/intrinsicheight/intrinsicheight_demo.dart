import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class IntrinsicHeightDemo extends StatelessWidget {
  const IntrinsicHeightDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IntrinsicHeightDemo"),
      ),
      body:Column(
        children: [
          Expanded(
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 50,color: Colors.green),
                  Container(height: 100,width: 50,color: Colors.red),
                  Container(width: 50,color: Colors.black)
                ],
              ),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_intrinsicheight_intrinsicheight_demo.fair.json",)),
        ],
      ),
    );
  }
}
