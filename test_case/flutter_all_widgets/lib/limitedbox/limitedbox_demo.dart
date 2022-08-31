import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class LimitedBoxDemo extends StatelessWidget {
  const LimitedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBoxDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: UnconstrainedBox(
                child: LimitedBox(
                  maxWidth: 100,
                  maxHeight: 100,
                  child: Text('ddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaa'),
                ),
              ),
            ),
          ),
          Expanded(
              child: FairWidget(
            path: "assets/bundle/fair/lib_limitedbox_limitedbox_demo.fair.json",
          )),
        ],
      ),
    );
  }
}
