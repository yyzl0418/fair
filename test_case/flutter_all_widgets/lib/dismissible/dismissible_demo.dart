import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DismissibleDemo extends StatelessWidget {
  const DismissibleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBoxTransitionDemo"),
      ),
      body: Column(
        children: [
          Dismissible(
            background: Container(
              height: 200,
              color: Colors.green,
            ),
            key: ValueKey<int>(1),
            onDismissed: (DismissDirection direction) {},
            child: ListTile(
              title: Text(
                'Item 1',
              ),
            ),
          ),
          Expanded(
            child: FairWidget(
              name: "DismissibleDemo",
              path: "assets/bundle/fair/lib_dismissible_dismissible_demo.fair.json",
            ),
          ),
        ],
      ),
    );
  }
}
