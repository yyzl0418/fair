import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class IgnorePointerDemo extends StatelessWidget {
  const IgnorePointerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IgnorePointerDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: IgnorePointer(
              ignoring: true,
              child: Center(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Expanded(
              child: FairWidget(
            path: "assets/bundle/fair/lib_ignorepointer_ignorepointer_demo.fair.json",
          ))
        ],
      ),
    );
  }
}
