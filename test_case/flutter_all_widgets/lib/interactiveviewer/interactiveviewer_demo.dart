import 'package:flutter/material.dart';

import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class InteractiveViewerDemo extends StatelessWidget {
  const InteractiveViewerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InteractiveViewerDemo"),
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              height: 150,
              color: Colors.grey,
              child: InteractiveViewer(
                panEnabled: true,
                boundaryMargin: EdgeInsets.all(40.0),
                child: Container(
                  child: Center(
                    child: Container(
                      color: Colors.red,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_interactiveviewer_interactiveviewer_demo.fair.json",)),
        ],
      ),
    );
  }
}
