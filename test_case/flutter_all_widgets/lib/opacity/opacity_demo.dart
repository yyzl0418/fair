import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class OpacityDemo extends StatelessWidget {
  const OpacityDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OpacityDemo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: FairWidget(path: "assets/bundle/fair/lib_opacity_opacity_demo.fair.json",),
          ),
        ],
      ),
    );
  }
}
