import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class OffstageDemo extends StatelessWidget {
  const OffstageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffstageDemo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Offstage(
                offstage: false,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_offstage_offstage_demo.fair.json",)),
        ],
      ),
    );
  }
}
