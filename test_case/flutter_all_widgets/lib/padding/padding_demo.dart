import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaddingDemo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
              child: FairWidget(
            path: "assets/bundle/fair/lib_padding_padding_demo.fair.json",
          ))
        ],
      ),
    );
  }
}
