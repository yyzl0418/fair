import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class MergeSemanticsDemo extends StatelessWidget {
  const MergeSemanticsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MergeSemanticsDemo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: MergeSemantics(
              child: Container(color: Colors.red,),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_mergesemantics_mergesemantics_demo.fair.json",))
        ],
      ),
    );
  }
}
