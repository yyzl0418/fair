import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class LayoutBuilderDemo extends StatelessWidget {
  const LayoutBuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilderDemo"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
          );
        },
      ),
    );
  }
}
