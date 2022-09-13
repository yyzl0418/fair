import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class LongPressDraggableDemo extends StatelessWidget {
  const LongPressDraggableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LongPressDraggableDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: LongPressDraggable(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                feedback: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                childWhenDragging: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                ),
                feedbackOffset: Offset(0, 10),
                dragAnchor: DragAnchor.child,
                onDragStarted: () {
                  print("onDragStarted");
                },
                onDragEnd: (DraggableDetails details) {
                  print("onDragEnd : $details");
                },
                onDraggableCanceled: (Velocity velocity, Offset offset) {
                  print('onDraggableCanceled velocity:$velocity,offset:$offset');
                },
                onDragCompleted: () {
                  print('onDragCompleted');
                },
              ),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_longpressdraggable_longpressdraggable_demo.fair.json",)),
        ],
      ),
    );
  }
}
