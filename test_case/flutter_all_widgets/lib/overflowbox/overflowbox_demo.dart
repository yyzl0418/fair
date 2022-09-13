import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class OverflowBoxDemo extends StatelessWidget {
  const OverflowBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverflowBoxDemo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: OverflowBox(
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
              child: FairWidget(
            path: "assets/bundle/fair/lib_overflowbox_overflowbox_demo.fair.json",
          )),
        ],
      ),
    );
  }
}
