import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DraggableDemo extends StatelessWidget {
  const DraggableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBoxTransitionDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Draggable<int>(
                  // Data is the value this Draggable stores.
                  data: 10,
                  feedback: Container(
                    color: Colors.deepOrange,
                    height: 100,
                    width: 100,
                    child: const Icon(Icons.directions_run),
                  ),
                  childWhenDragging: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.pinkAccent,
                    child: const Center(
                      child: Text('Child When Dragging'),
                    ),
                  ),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.lightGreenAccent,
                    child: const Center(
                      child: Text('Draggable'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: FairWidget(
            name: "DraggableDemo",
            path: "assets/bundle/fair/lib_draggable_draggable_demo.fair.json",
          )),
        ],
      ),
    );
  }
}
