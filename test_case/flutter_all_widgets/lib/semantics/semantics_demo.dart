import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class SemanticsDemo extends StatelessWidget {
  const SemanticsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ElevatedButtonDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ExcludeSemantics(
              excluding: true,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(child: FairWidget(
            path: "assets/bundle/fair/lib_semantics_semantics_demo.fair.json",
          )),
        ],
      ),
    );
  }
}
